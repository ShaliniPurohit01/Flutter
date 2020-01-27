import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get_it/get_it.dart';
import 'package:api/models/note.dart';
import 'package:api/notes_services.dart';
import 'package:api/models/note_insert.dart';

class NotesModify extends StatefulWidget {
  final String noteId;
  NotesModify({this.noteId});

  @override
  _NotesModifyState createState() => _NotesModifyState();
}

class _NotesModifyState extends State<NotesModify> {
  bool get isEditing => widget.noteId != null;

  NotesService get notesService => GetIt.I<NotesService>();

  String errorMessage;
  Note note;

  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    if (isEditing) {
      setState(() {
        _isLoading = true;
      });

      notesService.getNote(widget.noteId).then((response) {
        setState(() {
          _isLoading = false;
        });

        if (response.error) {
          errorMessage = response.errorMessage ?? 'an error occured';
        }
        note = response.data;
        _titleController.text = note.notesTitle;
        _contentController.text = note.notesContent;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? 'Modify Note' : 'Create Notes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : Column(
                children: <Widget>[
                  TextField(
                    controller: _titleController,
                    decoration: InputDecoration(hintText: 'Note Title'),
                  ),
                  Container(height: 8),
                  TextField(
                    controller: _contentController,
                    decoration: InputDecoration(hintText: 'Note Content'),
                  ),
                  Container(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 35,
                    child: RaisedButton(
                      child:
                          Text('Submit', style: TextStyle(color: Colors.white)),
                      color: Theme.of(context).primaryColor,
                      onPressed: () async {
                        if (isEditing) {
                          //update note
                        } else {
                          setState(() {
                            _isLoading = true;
                          });

                          final note = NoteInsert(
                              noteTitle: _titleController.text,
                              noteContent: _contentController.text);

                          final result = await notesService.createNote(note);

                          final title = 'Done';
                          final text = result.error
                              ? (result.errorMessage ?? 'An error occured')
                              : 'Your code was created';

                          showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                    title: Text(title),
                                    content: Text(text),
                                    actions: <Widget>[
                                      FlatButton(
                                        child: Text('ok'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      )
                                    ],
                                  )).then((data) {
                            if (result.data) {
                              Navigator.of(context).pop();
                            }
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

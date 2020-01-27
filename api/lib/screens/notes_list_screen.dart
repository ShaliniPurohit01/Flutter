// import 'package:api/notes_services.dart';
import 'package:api/models/api_response.dart';
import 'package:api/models/notes_data.dart';
import 'package:api/notes_services.dart';
import 'package:api/screens/notes_modification.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import './note_delete.dart';

class NotesList extends StatefulWidget {
  @override
  _NotesListState createState() => _NotesListState();
}

class _NotesListState extends State<NotesList> {
  // final service = NotesService();
  NotesService get service => GetIt.I<NotesService>();

  // List<NotesData> notes = [];

  APIResponse<List<NotesData>> _apiResponse;
  bool _isLoading = false;

  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  void initState() {
    _fetchNotes();
    // notes = service.getNotesList();
    super.initState();
  }

  _fetchNotes() async {
    setState(() {
      _isLoading = true;
    });

    _apiResponse = await service.getNotesList();

    setState(() {
      _isLoading = false;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('todos')),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => NotesModify()))
                .then((_) {
              _fetchNotes();
            });
          },
          child: Icon(Icons.add)),
      body: Builder(
        builder: (_) {
          if (_isLoading) {
            return CircularProgressIndicator();
          }
          if (_apiResponse.error) {
            return Center(child: Text(_apiResponse.errorMessage));
          }
          return ListView.separated(
            separatorBuilder: (_, __) =>
                Divider(height: 1, color: Colors.green),
            itemBuilder: (_, index) {
              return Dismissible(
                key: ValueKey(_apiResponse.data[index].notesId),
                direction: DismissDirection.startToEnd,
                onDismissed: (direction) {},
                confirmDismiss: (direction) {
                  final result = showDialog(
                    context: context,
                    builder: (_) => NoteDelete(),
                  );
                  return result;
                },
                background: Container(
                    color: Colors.red,
                    padding: EdgeInsets.only(left: 16),
                    child: Align(
                        child: Icon(Icons.delete, color: Colors.white),
                        alignment: Alignment.centerLeft)),
                child: ListTile(
                  title: Text(
                    _apiResponse.data[index].notesTitle,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  subtitle: Text(
                      'Last edited on ${formatDateTime(_apiResponse.data[index].lastEditedValue ?? _apiResponse.data[index].createValue)}'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => NotesModify(
                              noteId: _apiResponse.data[index].notesId,
                            )));
                  },
                ),
              );
            },
            itemCount: _apiResponse.data.length,
          );
        },
      ),
    );
  }
}

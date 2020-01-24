import 'package:api/screens/notes_modification.dart';
import 'package:flutter/material.dart';
import '../models/notes_data.dart';
import './note_delete.dart';

class NotesList extends StatelessWidget {
  final notes = [
    new NotesData(
      notesId: '1',
      notesTitle: 'title1',
      createValue: DateTime.now(),
      lastEditedValue: DateTime.now(),
    ),
    new NotesData(
      notesId: '2',
      notesTitle: 'title2',
      createValue: DateTime.now(),
      lastEditedValue: DateTime.now(),
    ),
    new NotesData(
      notesId: '3',
      notesTitle: 'title3',
      createValue: DateTime.now(),
      lastEditedValue: DateTime.now(),
    )
  ];

  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('todos')),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => NotesModify()));
          },
          child: Icon(Icons.add)),
      body: ListView.separated(
        separatorBuilder: (_, __) => Divider(height: 1, color: Colors.green),
        itemBuilder: (_, index) {
          return Dismissible(
            key: ValueKey(notes[index].notesId),
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
                notes[index].notesTitle,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              subtitle: Text(
                  'Last edited on ${formatDateTime(notes[index].lastEditedValue)}'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => NotesModify(
                          noteId: notes[index].notesId,
                        )));
              },
            ),
          );
        },
        itemCount: notes.length,
      ),
    );
  }
}
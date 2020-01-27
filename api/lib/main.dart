import 'package:api/notes_services.dart';
import 'package:api/screens/notes_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void setUpLocator() {
  GetIt.I.registerLazySingleton(() => NotesService());
}

void main() {
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NotesList(),
    );
  }
}

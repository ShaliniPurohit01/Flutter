// import 'package:api/screens/notes_list_screen.dart';
import 'dart:convert';

import 'package:api/models/api_response.dart';
import './models/notes_data.dart';
import 'package:http/http.dart' as http;

class NotesService {
  static const API = 'http://api.notes.programmingaddict.com';
  static const headers = {'apiKey': '08d7a2e5-b03a-ed68-3329-b6a59e4a3495'};
  Future<APIResponse<List<NotesData>>> getNotesList() {
    return http.get(API + '/notes', headers: headers).then((data) {
      if (data.statusCode == 200) {
        final jsonData = jsonDecode(data.body);
        final notes = <NotesData>[];

        for (var item in jsonData) {
          final note = NotesData(
            notesId: item['noteID'],
            notesTitle: item['noteTitle'],
            createValue: DateTime.parse(item['createDateTime']),
            lastEditedValue: item['lastEditedDateTime'] != null
                ? DateTime.parse(item['lastEditeddDateTime'])
                : null,
          );
          notes.add(note);
        }
        return APIResponse<List<NotesData>>(data: notes);
      }
      return APIResponse<List<NotesData>>(
          error: true, errorMessage: 'An error occured');
    }).catchError((_) => APIResponse<List<NotesData>>(
        error: true, errorMessage: 'An error occured'));
    // return [
    //   new NotesData(
    //     notesId: '1',
    //     notesTitle: 'title1',
    //     createValue: DateTime.now(),
    //     lastEditedValue: DateTime.now(),
    //   ),
    //   new NotesData(
    //     notesId: '2',
    //     notesTitle: 'title2',
    //     createValue: DateTime.now(),
    //     lastEditedValue: DateTime.now(),
    //   ),
    //   new NotesData(
    //     notesId: '3',
    //     notesTitle: 'title3',
    //     createValue: DateTime.now(),
    //     lastEditedValue: DateTime.now(),
    //   )
    // ];
  }
}

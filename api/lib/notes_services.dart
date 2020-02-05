import 'dart:convert';
import 'package:api/models/api_response.dart';
import './models/notes_data.dart';
import 'package:http/http.dart' as http;
import './models/note.dart';
import './models/note_insert.dart';

class NotesService {
  static const API = 'http://api.notes.programmingaddict.com';
  static const headers = {
    'apiKey': '08d7a2e5-b03a-ed68-3329-b6a59e4a3495',
    'Content-Type': 'application/json'
  };
  Future<APIResponse<List<NotesData>>> getNotesList() {
    return http.get(API + '/notes', headers: headers).then((data) {
      if (data.statusCode == 200) {
        final jsonData = jsonDecode(data.body);
        final notes = <NotesData>[];

        for (var item in jsonData) {
          notes.add(NotesData.fromJson(item));
        }
        return APIResponse<List<NotesData>>(data: notes);
      }
      return APIResponse<List<NotesData>>(
          error: true, errorMessage: 'An error occured');
    }).catchError((_) => APIResponse<List<NotesData>>(
        error: true, errorMessage: 'An error occured'));
  }

  Future<APIResponse<Note>> getNote(String noteId) {
    return http.get(API + '/notes/' + noteId, headers: headers).then((data) {
      if (data.statusCode == 200) {
        final jsonData = jsonDecode(data.body);

        return APIResponse<Note>(data: Note.fromJson(jsonData));
      }
      return APIResponse<Note>(error: true, errorMessage: 'An error occured');
    }).catchError((_) =>
        APIResponse<Note>(error: true, errorMessage: 'An error occured'));
  }

  Future<APIResponse<bool>> createNote(NoteInsert item) {
    return http
        .post(API + '/notes',
            headers: headers, body: json.encode(item.toJson()))
        .then((data) {
      if (data.statusCode == 201) {
        return APIResponse<bool>(data: true);
      }
      return APIResponse<bool>(error: true, errorMessage: 'An error occured');
    }).catchError((error) {
      print(error);
    });
    // APIResponse<bool>(error: true, errorMessage: 'An error occured'));
  }
}

class NotesData {
  String notesId;
  String notesTitle;
  DateTime createValue;
  DateTime lastEditedValue;

  NotesData(
      {this.notesId, this.notesTitle, this.createValue, this.lastEditedValue});

  factory NotesData.fromJson(Map<String, dynamic> item) {
    return NotesData(
      notesId: item['noteID'],
      notesTitle: item['noteTitle'],
      createValue: DateTime.parse(item['createDateTime']),
      lastEditedValue: item['lastEditedDateTime'] != null
          ? DateTime.parse(item['lastEditeddDateTime'])
          : null,
    );
  }
}

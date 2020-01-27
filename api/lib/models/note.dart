class Note {
  String notesId;
  String notesTitle;
  String notesContent;
  DateTime createValue;
  DateTime lastEditedValue;

  Note(
      {this.notesId,
      this.notesTitle,
      this.notesContent,
      this.createValue,
      this.lastEditedValue});

  factory Note.fromJson(Map<String, dynamic> item) {
    return Note(
      notesId: item['noteID'],
      notesTitle: item['noteTitle'],
      notesContent: item['noteContent'],
      createValue: DateTime.parse(item['createDateTime']),
      lastEditedValue: item['lastEditedDateTime'] != null
          ? DateTime.parse(item['lastEditeddDateTime'])
          : null,
    );
  }
}

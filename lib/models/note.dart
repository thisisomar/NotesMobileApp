class Note {
  final int id;
  String title;
  String info;
  DateTime dateCreated;
  DateTime lastEdited;
  bool locked;

  Note(this.id, this.title, this.info, this.dateCreated, [this.locked = false]);
}

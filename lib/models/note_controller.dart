import 'dart:collection';
import 'package:notesapp/models/note.dart';

class NoteController {
  List<Note> _notes = [
    Note(1, "First Note", "This is the first note.", DateTime.now())
  ];

  UnmodifiableListView<Note> get notes {
    return UnmodifiableListView(_notes);
  }

  int get notesCount {
    return _notes.length;
  }

  void addNote(int id, String newTitle, String noteInfo, DateTime dateCreated) {
    final note = Note(id, newTitle, noteInfo, dateCreated);
    _notes.add(note);
  }

  void deleteNote(Note note) {
    _notes.remove(note);
  }
}

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:notesapp/components/note_card.dart';

class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
        elevation: 0,
        actions: <Widget> [
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: () {},
          )
        ]
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.add),
          onPressed: () {}
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          return NoteCard(
            colour: Color(0xFF303030),
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Testing",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)
                ),
                Text(
                  "This is a note description!",
                  style: TextStyle(fontSize: 18)
                )
              ],
            ),
          );
        })
      )
    );
  }
}

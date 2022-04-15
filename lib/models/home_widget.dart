import 'package:flutter/material.dart';

import '../components/note_list_widget.dart';
import '../components/todo_list_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        NoteListWidget(),
        ToDoListWidget(),
      ],
    );
  }
}

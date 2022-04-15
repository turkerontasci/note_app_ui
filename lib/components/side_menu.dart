import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';

import '../models/notes_edit.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xFFffffff).withOpacity(0.3),
        ),
        height: double.infinity,
        width: 10,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                Row(
                  children: const [
                    Spacer(),
                    // We don't want to show this close button on Desktop mood
                  ],
                ),
                const SizedBox(height: 20),
                FlatButton.icon(
                  minWidth: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NotesEdit()),
                    );
                  },
                  icon: const Icon(
                    CupertinoIcons.add,
                    size: 16,
                    color: Colors.white,
                  ),
                  label: const Text(
                    "New note",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

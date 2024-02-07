// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/responsive.dart';

class NoteSideMenu extends StatelessWidget {
  const NoteSideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.blueGrey.shade100,
        ),
        height: double.infinity,
        width: 10,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                Row(
                  children: [
                    const Spacer(),
                    // We don't want to show this close button on Desktop mood
                    if (!Responsive.isDesktop(context)) CloseButton(),
                  ],
                ),
                const SizedBox(height: 20),
                TextButton.icon(
                  onPressed: () {},
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
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.download, size: 16),
                  label: const Text(
                    "Get notes",
                    style: TextStyle(color: kTextColor),
                  ),
                ),
                const SizedBox(height: kDefaultPadding * 2),
                //TODO Notların listesi gösterilecek şekilde düzenlenecek.
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/home_widget.dart';
import 'package:flutter_application_2/components/side_menu.dart';
import 'package:flutter_application_2/responsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Responsive(
          mobile: Container(
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: const HomeWidget(),
          ),
          tablet: Container(
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: Row(
              children: const <Widget>[
                Expanded(
                  flex: 4,
                  child: SideMenu(),
                ),
                Expanded(
                  flex: 9,
                  child: HomeWidget(),
                ),
              ],
            ),
          ),
          desktop: Container(
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: Row(
              children: const <Widget>[
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
                Expanded(
                  flex: 9,
                  child: HomeWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

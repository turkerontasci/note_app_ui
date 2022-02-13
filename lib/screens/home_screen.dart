import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/models/home_widget.dart';
import 'package:flutter_application_2/models/side_menu.dart';
import 'package:flutter_application_2/responsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kSecondaryColor,
        body: Responsive(
          mobile: const HomeWidget(),
          tablet: Row(
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
          desktop: Row(
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
    );
  }
}
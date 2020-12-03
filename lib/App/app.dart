import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:spacex/Ui/HomePage/HomePage.dart';


class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spacex/Core/SizeConfig.dart';

import 'package:spacex/Data/repository/repository.dart';
import 'package:spacex/Ui/HomePage/NextLaunchWidget.dart';
import 'package:spacex/Ui/HomePage/UpCommingWidget.dart';
import 'package:spacex/Ui/HomePage/bloc/bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bloc = HomeBloc(Get.find<Repository>());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("SpaceX"),
      ),
      body: Column(
        children: [
          NextLaunchWidget(_bloc),
          Expanded(
            child: UpCommingWidget(_bloc),
          ),
        ],
      ),
    );
  }
}

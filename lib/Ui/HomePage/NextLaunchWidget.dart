import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share/share.dart';
import 'package:spacex/Core/SizeConfig.dart';
import 'package:spacex/Models/Launch.dart';

import 'package:spacex/Ui/HomePage/bloc/bloc/home_bloc.dart';

class NextLaunchWidget extends StatefulWidget {
  final HomeBloc homeBloc;
  NextLaunchWidget(this.homeBloc, {Key key}) : super(key: key);

  @override
  _NextLaunchWidgetState createState() => _NextLaunchWidgetState();
}

class _NextLaunchWidgetState extends State<NextLaunchWidget> {
  @override
  void initState() {
    super.initState();
    widget.homeBloc.add(GetNextLaunch());
  }

  bool countDownBegun = false;
  DateTime countDown;
  setCountDown(DateTime beginDate) {
    countDownBegun = true;
    countDown = beginDate;
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        countDown = countDown.add(Duration(seconds: -1));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: widget.homeBloc,
      buildWhen: (prev, curr) {
        return curr is LoadingNext ||
            curr is NextLaunchReady ||
            curr is ErrorInNext;
      },
      builder: (context, state) {
        if (state is LoadingNext) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is NextLaunchReady) {
          if (!countDownBegun)
            setCountDown(DateTime.parse(state.launch.launch_date_local));
          return Column(
            children: [
              SizedBox(
                height: SizeConfig.h(50),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Next Launch in",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.w(25),
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {
                        Share.share(state.launch.links.reddit_campaign);
                      }),
                ],
              ),
              SizedBox(height: SizeConfig.h(15)),
              Text(
                getCountDownString(),
                style: TextStyle(
                    color: Colors.red,
                    fontSize: SizeConfig.w(25),
                    fontWeight: FontWeight.bold),
              )
            ],
          );
        }
        if (state is ErrorInNext) {
          return Center(
            child: Text(state.error),
          );
        }
        return Container();
      },
    );
  }

  String getCountDownString() {
    return (countDown?.day.toString() ?? "") +
        " : " +
        (countDown?.minute.toString() ?? "") +
        " : " +
        (countDown?.second.toString() ?? "");
  }
}

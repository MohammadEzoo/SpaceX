import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:spacex/Core/SizeConfig.dart';
import 'package:intl/intl.dart';
import 'package:spacex/Data/SharedPref.dart';
import 'package:spacex/Data/repository/repository.dart';

import 'bloc/bloc/home_bloc.dart';

class UpCommingWidget extends StatefulWidget {
  final HomeBloc homeBloc;
  UpCommingWidget(this.homeBloc, {Key key}) : super(key: key);

  @override
  _UpCommingWidgetState createState() => _UpCommingWidgetState();
}

class _UpCommingWidgetState extends State<UpCommingWidget> {
  List<String> fav = [];
  @override
  void initState() {
    super.initState();
    SharedPref.pref.getFavLaunch().then((value) {
      setState(() {
        fav = value;
      });
    });
    widget.homeBloc.add(GetUpcommings());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      buildWhen: (prev, curr) {
        return curr is LoadingUpcommings ||
            curr is UpcommingsReady ||
            curr is ErrorInUpcommings;
      },
      cubit: widget.homeBloc,
      builder: (context, state) {
        if (state is LoadingUpcommings) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is UpcommingsReady) {
          var textStyle = TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.w(14),
              fontWeight: FontWeight.bold);
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.h(50),
              ),
              Text("Upcoming Launches",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.w(25),
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: SizeConfig.h(25),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.blueGrey,
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Name",
                      style: textStyle,
                    )),
                    Expanded(
                        child: Text(
                      "Date",
                      style: textStyle,
                    )),
                    Expanded(
                        child: Text(
                      "Vehical",
                      style: textStyle,
                    )),
                    Expanded(
                        child: Text(
                      "Launchpad",
                      style: textStyle,
                    ))
                  ],
                ),
              ),
              ...List.generate(state.launches.length, (index) {
                var iscontains =
                    fav.contains(state.launches[index].mission_id.toString());
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Expanded(child: Text(state.launches[index].mission_name)),
                    Expanded(
                      child: Text(DateFormat('dd-mm-yyyy')
                          .format(DateTime.parse(
                              state.launches[index].launch_date_local))
                          .toString()),
                    ),
                    Expanded(
                        child: Text(state.launches[index].rocket.rocket_name)),
                    Expanded(
                        child:
                            Text(state.launches[index].launch_site.site_name)),
                    Expanded(
                        child: GestureDetector(
                      child: Icon(
                        iscontains ? Icons.favorite : Icons.favorite_border,
                        color: iscontains ? Colors.red : Colors.grey,
                      ),
                      onTap: () {
                        !iscontains
                            ? addToFav(
                                state.launches[index].mission_id.toString())
                            : removeFromFav(
                                state.launches[index].mission_id.toString());
                        setState(() {});
                      },
                    ))
                  ]),
                );
              }),
            ],
          );
        }
        if (state is ErrorInUpcommings) {
          return Center(
            child: Text(state.error),
          );
        }
        return Container();
      },
    );
  }

  addToFav(String value) {
    fav.add(value);
    fav.contains(value);
    SharedPref.pref.saveLaunch(value);
    setState(() {});
  }

  removeFromFav(String value) {
    fav.remove(value);
    SharedPref.pref.removeLaunch(value);
    setState(() {});
  }
}

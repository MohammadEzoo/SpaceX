import 'package:flutter/material.dart';

import 'App/app.dart';
import 'injectoin.dart';

void main() async {
  await iniGetIt();
  runApp(App());
}

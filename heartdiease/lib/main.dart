import 'package:flutter/material.dart';

import 'package:heartdiease/Screen2.dart';
import 'package:heartdiease/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: screen2(),
    );
  }
}

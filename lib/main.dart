import 'package:flutter/material.dart';
import 'package:weather/loading.dart';
import 'loading.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'geoloc.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Load(),
    );
  }
}

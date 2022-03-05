import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:navigation_flutter_demo/screen0.dart';
import 'screen1.dart';
import 'screen2.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Screen0(),
      initialRoute: '/',//initialRouteを指定できる
      routes: {
      '/': (context) => Screen0(),
      '/screen1': (context) => Screen1(),
      '/screen2': (context) => Screen2(),
    } // Map<String, WidgetBuilder = Function(BuildContext context);>? // //複数の画面に遷移するときに便利
      );
  }
}

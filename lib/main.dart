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
      '/screen2': (context) => Screen2(
        hintText0: 'Screen0からの値わたし',
        hintText1: 'Screen0からの値わたし',
        buttonTitle: 'Screen 0',
      ),//Screen2(hinText0,..),ここでも値渡しできそう
    } // Map<String, WidgetBuilder = Function(BuildContext context);>? // //複数の画面に遷移するときに便利
      );
  }
}

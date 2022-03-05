import 'package:flutter/material.dart';
import 'screen2.dart';

// ignore: use_key_in_widget_constructors
class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: const Text('Go Forwards To Screen 2'),
          onPressed: () {
            Navigator.push(
              context,//ここのWidgetから
              MaterialPageRoute(builder: (context) {
                return Screen2();//MaterialPageRouteを使ってScreen2にpushする
              }),
            );
          },
        ),
      ),
    );
  }
}

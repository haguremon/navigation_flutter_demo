import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  //画面が作成される前に最初によばれる
  void initState() {
    super.initState();
    print('initState colled');
  }
//画面作成時
  @override
  Widget build(BuildContext context) {
      print('build colled');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Screen 2'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: const Text('Go Back To Screen 1'),
          onPressed: () {
            //Navigate to Screen 1
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
  //画面が壊されたとき
  @override
  void deactivate() {
    super.deactivate();
      print('deactivate colled');
  }
}

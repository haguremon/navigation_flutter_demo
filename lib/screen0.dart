import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Screen0 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Screen 0'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Text('Go To Screen 1'),
              onPressed: () {
                //Navigate to Screen 1
                Navigator.pushNamed(context, '/screen1');
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Text('Go To Screen 2'),
              onPressed: () {
                //
                Navigator.pushNamed(
                  context, '/screen2',
                  // arguments: Screen2(
                  //   hintText0: 'Screen0からの値わたし',
                  //   hintText1: 'Screen0からの値わたし' //無理やったわカスタムのオブジェクトだとできるのかなカスタムオブジェクトを渡す方法らしいけど
                  // ),
                  );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}

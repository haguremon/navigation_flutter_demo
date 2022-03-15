import 'package:flutter/material.dart';
import 'screen2.dart';

// ignore: use_key_in_widget_constructors
class Screen1 extends StatefulWidget {

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  String textData0 = 'Screen1Text0';
  String textData1 = 'Screen1Text1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textData0,
              style: const TextStyle(
                backgroundColor: Colors.red,
                color: Colors.white,
              ),
            ),
            Text(
              textData1,
              style: const TextStyle(
                backgroundColor: Colors.red,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Text('Go Forwards To Screen 2'),
              onPressed: () async {
                Map<String, String>? textDatas = await Navigator.push(
                  context, //ここのWidgetから
                  MaterialPageRoute(builder: (context) {
                    return Screen2(
                      hintText0: 'Screen2からの値渡しです',
                      hintText1: 'Screen2からの値渡しです',
                    ); //MaterialPageRouteを使ってScreen2にpushする
                  }),
                );
                setState(() {
                  if (textDatas != null) {
                    textData0 = textDatas['textData0'] ?? 'null';
                    textData1 = textDatas['textData1'] ?? 'null';
                  } else {
                    textData0 = 'null';
                    textData1 = 'null';
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

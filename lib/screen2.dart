import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class Screen2 extends StatefulWidget {
  String hintText0 = '何かを入力してください0';
  String hintText1 = '何かを入力してください1';
  String buttonTitle = 'Screen 1';

  // ignore: use_key_in_widget_constructors
  Screen2({this.hintText0 = '', this.hintText1 = '', this.buttonTitle = 'Screen 1'});

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  Map<String, String> textDatas = {'textData0': '', 'textData1': ''};
  @override
  //画面が作成される前に最初によばれる
  void initState() {
    super.initState();
    print('initState called');
  }

//画面作成時
  @override
  Widget build(BuildContext context) {
    print('build called');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.amber,
                  hintText: widget.hintText0,
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 174, 167, 167),
                  ),
                  contentPadding: const EdgeInsets.all(5),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  textDatas['textData0'] = value;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.amber,
                  hintText: widget.hintText1,
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 174, 167, 167),
                  ),
                  contentPadding: const EdgeInsets.all(5),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  textDatas['textData1'] = value;
                },
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Text('Go Back To ${widget.buttonTitle}'),
              onPressed: () {
                //Navigate to Screen 1
                Navigator.pop(context, textDatas);
              },
            ),
          ],
        ),
      ),
    );
  }

  //画面が壊されたとき
  @override
  void deactivate() {
    super.deactivate();
    print('deactivate called');
  }
}

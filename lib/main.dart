import 'package:flutter/material.dart';

import 'demo_text_v1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Real vs Mock"),
      ),
      body: Center(
        child: Row(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: new Align(
                alignment: FractionalOffset.topLeft,
                child: Text(
                  "for the king",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              width: 1,
              color: Color(0xff000000),
            ),
            Expanded(
              flex: 1,
              child: Align(
                  alignment: FractionalOffset.topLeft,
                  child: TextDemoV1("for the people",
                      style: TextStyle(fontSize: 20))),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'nameeditor.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  late String _name;

  @override
  void initState() {
    _name = '';
  }

  void onNameChanged(String value) {
    setState(() => _name = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name here'),
      ),
      body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text('Hello $_name!'),
                NameEditor(onNameChanged),
              ],
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';

class NameEditor extends StatefulWidget {
  const NameEditor(this.onNameChanged);
  final ValueChanged<String> onNameChanged;

  @override
  _NameEditorState createState() => _NameEditorState(onNameChanged);
}

class _NameEditorState extends State<NameEditor> {
  _NameEditorState(this.onNameChanged);

  final ValueChanged<String> onNameChanged;
  late TextEditingController _name;

  @override
  void initState() {
    super.initState();
    _name = TextEditingController();
  }

  void _onPressed() {
    onNameChanged(_name.text);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          TextField(
            controller: _name,
            decoration: const InputDecoration(labelText: 'Enter your name'),
          ),
          ElevatedButton(
            onPressed: _onPressed,
            child: const Text('Click me'),
          )
        ],
      ),
    );
  }
}

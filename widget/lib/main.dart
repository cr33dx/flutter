import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'test app',
      home: MyScaffold(),
    ));

class MyAppBar extends StatelessWidget {
  MyAppBar(this.title);
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            onPressed: null,
          ),
          Expanded(child: this.title),
          IconButton(icon: Icon(Icons.search), onPressed: null)
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(Text(
            'Example title',
            style: Theme.of(context).primaryTextTheme.headline6,
          )),
          Expanded(
              child: Center(
            child: Text('hello World'),
          ))
        ],
      ),
    );
  }
}

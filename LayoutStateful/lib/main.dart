import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      title: 'Test',
      home: MyWidget(),
    ));

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'FLutter Demo Layout With Stateful Stars Widget',
            style: TextStyle(fontWeight: FontWeight.w200, fontSize: 15),
          ),
        ),
        body: Column(
          children: [Image.asset('images/main.jpg'), locationBar, button_container, bodyText],
        ));
  }
}

Widget locationBar = Container(
    padding: EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gandhi Park',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Dehradun 248001')
          ],
        )),
        Stars()
      ],
    ));

class Stars extends StatefulWidget {
  @override
  _StarsState createState() => _StarsState();
}

class _StarsState extends State<Stars> {
  int _counter = 41;
  bool _isFav = true;
  void _toggleButton() {
    setState(() {
      _isFav ? _counter-- : _counter++;
      _isFav = !_isFav;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(_counter.toString()),
        IconButton(
            icon: (_isFav ? Icon(Icons.star) : Icon(Icons.star_border)), onPressed: _toggleButton)
      ],
    );
  }
}

Widget bodyText = Container(
    padding: EdgeInsets.all(32),
    child: Text(
      'This is Gandhi Park '
      'Its in dehradun near ashtley hall '
      'It is good place to walk and chill '
      'It has a famous eatry infront of its enterance '
      'Named Buffet',
      softWrap: true,
    ));

Widget button_container = Container(
  padding: EdgeInsets.only(top: 15, bottom: 15),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      buttons(Colors.blue, "Call Us", Icons.phone),
      buttons(Colors.blue, "Route", Icons.near_me),
      buttons(Colors.blue, "Share", Icons.share)
    ],
  ),
);

Column buttons(Color color, String label, IconData icon) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon),
      Text(
        label,
        style: TextStyle(color: color),
      )
    ],
  );
}

Widget titleSection = Container(
  padding: EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(3),
            child: Text(
              'Gandhi Park',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 3),
            child: Text('Uttarakhand, 248001'),
          )
        ],
      )),
      Icon(
        Icons.star,
        color: Colors.red,
      ),
      Text('41')
    ],
  ),
);

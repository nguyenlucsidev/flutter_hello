import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    var routes = <String, WidgetBuilder> {
      MyItemsPage.routeName: (BuildContext context) => new MyItemsPage(title: "MyItemsPage"),
    };

    return new MaterialApp(
      title: "Flutter Demo",

      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: new MyHomePage(
        title: "Flutter demo home page",
      ),

      routes: routes,
    ); 
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
    this.title
  }): super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    Navigator.pushNamed(context, MyItemsPage.routeName);
  }

  @override 
  Widget build(BuildContext context) {
    var button = new IconButton(
      icon: new Icon(Icons.access_alarm),
      onPressed: _onButtonPressed,
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),

      body: new Column(
        children: <Widget>[
          new Text("Dog"),

          new Text("Cat"),

          button
        ],
      ),

      floatingActionButton: new FloatingActionButton(),
    );
  }
}

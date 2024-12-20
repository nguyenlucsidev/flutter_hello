import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// my app state
class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}


// my home page
class MyHomePage extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {

    var appState = context.watch<MyAppState>();
    
    // build scaffold
    return Scaffold(
      // body 
      body: Column(children: [
        Text('A random idea  2 nha'),
        Text(appState.current.asLowerCase),
      ],),
    );
  }
  
}


// my app
class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (content) => MyAppState(),
      child: MaterialApp(
        title: 'Name App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange)
        ),

        home: MyHomePage(),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
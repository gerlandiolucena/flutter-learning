import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'file:///C:/Users/Gerlandio/AndroidStudioProjects/loterr_ia/lib/Modules/RandomWords.dart';
import 'file:///C:/Users/Gerlandio/AndroidStudioProjects/loterr_ia/lib/Modules/SelectNumbers.dart';
import 'package:intl/intl.dart';
import 'package:loterr_ia/Modules/Contact/ContactList.dart';
import 'package:loterr_ia/Modules/ResultadoJogo/ResultadoJogo.dart';

void main() {
  Intl.defaultLocale = 'pt_BR';
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LoterrIA',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ContactList(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RandomWords(),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

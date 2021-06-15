import 'package:basic_layout/AreaCalculator/AreaCalculatorPage.dart';
import 'package:basic_layout/Containers/Containers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic layout',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xff4CAF50),
        accentColor: Color(0xff009688),
      ),
      home: Home(title: 'Flutter basic layout'),
    );
  }
}

class Home extends StatelessWidget {

  final String title;

  Home({required this.title});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Basic layout',
              style: Theme.of(context).textTheme.headline4,
            ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => ContainersPage())
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.arrow_forward),
      ),
      persistentFooterButtons: [
        IconButton(onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AreaCalculatorPage())
          );
        },
            icon: Icon(Icons.add_location)
        ),
        IconButton(onPressed: () {},
            icon: Icon(Icons.add_alarm)
        ),
        IconButton(onPressed: () {},
            icon: Icon(Icons.add_comment)
        )
      ],
    );
  }
}

import 'package:expenses_helper/Theme/Colors/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Card(
                child: Text('You have pushed the button this many times:',textAlign: TextAlign.center,),
                elevation: 5,
              ),
            ),
            Card(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                      color: ColorTheme.purple,
                    ),
                    child: Center(
                      child: Text("65.5",
                        style: TextStyle(
                          color: ColorTheme.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    margin: EdgeInsets.all(10),
                    height: 44,
                    width: 44,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text("Description",
                            style: TextStyle(
                                color: ColorTheme.dark,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                        ),
                      ),
                      Container(
                        child: Text("Element",
                          style: TextStyle(
                              color: ColorTheme.grey
                          ),
                        ),
                      )],
                  )
                ],
              ),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainersPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Containers"),
      ),
      body: SingleChildScrollView(
        child: Column( children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                            Radius.circular(8)
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 50,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 30,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(-1.0, -1.0),
                            end: Alignment(1.0, 1.0),
                            colors: [Colors.black12, Colors.black87]
                        ),
                        color: Colors.amber,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 30,
                    height: 200,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(-1.0, -1.0),
                            end: Alignment(1.0, 1.0),
                            colors: [Colors.deepPurpleAccent, Colors.purpleAccent]
                        ),
                        color: Colors.purple,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(1.0, -1.0),
                            end: Alignment(-1.0, 1.0),
                            colors: [Colors.purple, Colors.pink]
                        ),
                        color: Colors.amber,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: NetworkImage("https://picsum.photos/200")
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20)
                  )
              ),
            )
          ],)
        ],
        ),
      )
    );
  }


}
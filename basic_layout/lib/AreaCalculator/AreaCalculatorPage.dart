import 'package:basic_layout/AreaCalculator/AreaTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ShapeContainer.dart';

class AreaCalculatorPage extends StatefulWidget {
  @override
  _AreaCalculatorState createState() => _AreaCalculatorState();
}

class _AreaCalculatorState extends State<AreaCalculatorPage> {
  List<String> shapes = ['Rectangle', 'Triangle'];

  String currentShape = 'Rectangle';
  String result = '0';
  double width = 0;
  double height = 0;

  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  @override
  void initState() {
    super.initState();
    result = '0';
    currentShape = 'Rectangle';
    widthController.addListener(updateWidht);
    heightController.addListener(updateHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Containers"),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 15.0),
          child: SingleChildScrollView(
              child: Column(
            children: <Widget>[
              DropdownButton<String>(
                  value: currentShape,
                  items: shapes.map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 24.0),
                      ),
                    );
                  }).toList(),
                  onChanged: (shape) {
                    setState(() {
                      currentShape = shape ?? '';
                    });
                  }),
              ShapeContainer(shape: currentShape),
              AreaTextField(controller: widthController, hint: 'Width'),
              AreaTextField(controller: heightController, hint: 'Height'),
              Container(
                margin: EdgeInsets.all(15.0),
                child: ElevatedButton(
                  child: Text(
                    'Calculate Area',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  //color: Colors.lightBlue,
                  onPressed: calculateArea,
                ),
              ),
              Text(
                result,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.green[700],
                ),
              ),
            ],
          )),
        ));
  }

  calculateArea() {
    double area = 0;

    if (currentShape == 'Rectangle') {
      area = width * height;
    } else if (currentShape == 'Triangle') {
      area = width * height / 2;
    } else {
      area = 0;
    }
    setState(() {
      result = 'The area is ' + area.toString();
    });
  }

  updateWidht() {
    setState(() {
      if (widthController.text != '') {
        width = double.parse(widthController.text);
      } else {
        width = 0;
      }
    });
  }

  updateHeight() {
    setState(() {
      if (heightController.text != '') {
        height = double.parse(heightController.text);
      } else {
        height = 0;
      }
    });
  }
}

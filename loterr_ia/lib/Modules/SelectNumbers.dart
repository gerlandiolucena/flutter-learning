import 'package:flutter/material.dart';

class SelectNumbers extends StatefulWidget {
  @override
  _SelectNumbersState createState() => _SelectNumbersState();
}

class _SelectNumbersState extends State<SelectNumbers> {

  final _listNumbers = Set<int>();

  void addNumber(number) {
    setState(() {
      if (_listNumbers.contains(number)) {
        _listNumbers.remove(number);
      } else {
        _listNumbers.add(number);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selecione números para excluir'),
        actions: [
          IconButton(icon: Icon(Icons.list), onPressed: () {}),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 5,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: List.generate(25, (index) {
          return Center(
            child: CircleButton(onTap: () { addNumber(index + 1); }, name: (index+1).toString(), selected: _listNumbers.contains(index+1),),
          );
        }),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final String name;
  final bool selected;

  const CircleButton({Key key, this.onTap, this.name, this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double size = 44.0;

    return InkResponse(
      onTap: onTap,
      child: new Container(
        width: size,
        height: size,
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: selected ? Colors.cyan : Colors.grey,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(name),
        )
      ),
    );
  }
}
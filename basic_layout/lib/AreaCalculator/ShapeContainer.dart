import 'package:basic_layout/UIComponents/RectanglePainter.dart';
import 'package:basic_layout/UIComponents/TrianglePainter.dart';
import 'package:flutter/cupertino.dart';

class ShapeContainer extends StatelessWidget {
  final String shape;
  const ShapeContainer({Key? key, required this.shape}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (shape == 'Triangle') {
      return CustomPaint(
        size: Size(100, 100),
        painter: TrianglePainter(),
      );
    } else {
      return CustomPaint(
        size: Size(100, 100),
        painter: RectanglePainter(),
      );
    }
    return Container();
  }
}
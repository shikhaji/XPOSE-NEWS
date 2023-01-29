import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  const CustomTag({Key? key, required this.backgroudColor, required this.childern}) : super(key: key);

  final Color backgroudColor;
  final List<Widget> childern;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: backgroudColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: childern,
      ),
    );
  }
}

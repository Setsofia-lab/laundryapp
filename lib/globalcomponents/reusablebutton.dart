import 'package:flutter/material.dart';

class reusablebutton extends StatelessWidget {
  const reusablebutton({
    Key? key,
    this.backgroundColor = Colors.blue,
    this.borderColor = Colors.blue,
    this.width = 0.9,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  final Color borderColor;
  final Color backgroundColor;
  final Widget child;
  final double width;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Color(0xFF087FC2),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: BoxDecoration(
          color: Color(0xFF087FC2),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(color: Color(0xFF087FC2))),
      child: TextButton(
        onPressed: () {
          print('object');
        },
        child: Center(child: child),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class reusabletextfield extends StatelessWidget {
  const reusabletextfield({
    this.borderColor = Colors.white10,
    //this.width = 0.85,
    // this.align = false,
    required this.label,
    Key? key,
  }) : super(key: key);

  final Color borderColor;
  final String label;
  //final double width;
  //final bool align;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
        color: Colors.white70,
        border: Border.all(color: Colors.white10, width: 2),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: TextField(
        //textAlign: align ? TextAlign.center : TextAlign.start,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: label,
          hintStyle: TextStyle(color: Colors.black26),
        ),
      ),
    );
  }
}

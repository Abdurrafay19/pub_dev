import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String title;
  final Color color;
  final double? height;
  const Button({super.key, required this.title, required this.color,  this.height});
  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Center(child: Text(widget.title, style:const TextStyle(
          color: Colors.white
      ),)),
    );
  }
}

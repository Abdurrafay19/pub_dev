import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  final double? height;
   const CustomButton({super.key, required this.title, required this.color,  this.height});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: height ?? 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Center(child: Text(title, style:const TextStyle(
          color: Colors.white
      ),)),
    );
  }
}

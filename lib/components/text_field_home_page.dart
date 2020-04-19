import 'package:flutter/material.dart';

class TextFieldHomePage extends StatelessWidget {
  final size;
  final Widget suffixIcon;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;

  TextFieldHomePage({
    @required this.size,
    this.suffixIcon,
    this.onChanged,
    this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.025,
        horizontal: size.width * 0.025,
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          prefixIcon: Icon(Icons.list),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}

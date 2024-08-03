import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final double width;
  final Color background;
  final VoidCallback function;
  final String text;

  const DefaultButton({
    Key? key,
    this.width = double.infinity,
    this.background = Colors.deepOrange,
    required this.function,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: background,
      ),
      width: width,
      height: 40,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(
            color: Color.fromARGB(255, 231, 224, 224),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

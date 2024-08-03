import 'package:flutter/material.dart';

class IconEyes extends StatelessWidget {
  const IconEyes({
    super.key,required this.function
  });
  final VoidCallback function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: function,
        child: Icon(
          Icons.remove_red_eye,
          color: Colors.black,
        ));
  }
}

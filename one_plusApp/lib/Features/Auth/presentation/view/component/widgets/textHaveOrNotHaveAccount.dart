
import 'package:flutter/material.dart';

class textHaveOrNotHaveAccount extends StatelessWidget {
  const textHaveOrNotHaveAccount({
    super.key,required this.text1,required this.text2,required this.onTapText2
  });
  final String text1;
  final String text2;
    final VoidCallback onTapText2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text1),
        InkWell(onTap: onTapText2,
          child: Text(text2)),
      ],
    );
  }
}

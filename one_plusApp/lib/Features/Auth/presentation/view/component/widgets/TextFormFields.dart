import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/IconEyses.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/widgets/customTextField.dart';

class TextFormFields extends StatelessWidget {
  const TextFormFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Name:"),
        CustomTextField(hint: "enter your name"),
        SizedBox(
          height: 15,
        ),
        Text("email:"),
        CustomTextField(hint: "enter email"),
        SizedBox(
          height: 15,
        ),
        Text("password:"),
        CustomTextField(hint: "enter password", suffix: IconEyes(function: () {
          
        },)),
        SizedBox(
          height: 20,
        ),
        Text(" confirm password : "),
        CustomTextField(
          hint: " confirm password : ",
          suffix: IconEyes(function: () {
            
          },),
        ),
      ],
    );
  }
}

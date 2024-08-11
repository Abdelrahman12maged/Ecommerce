import 'package:flutter/material.dart';
import 'package:one_plus/core/utils/global/themes/appColor/appColorLight.dart';

// class CustomTextField extends StatelessWidget {
//   const CustomTextField({super.key, required this.hint});
//   final String hint;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: TextFormField(
//         decoration: InputDecoration(
//             hintText: hint,
//             hintStyle:Theme.of(context).textTheme.bodySmall ,
//             fillColor: Color.fromARGB(255, 238, 238, 238),
//             filled: true,
//             border:InputBorder.none,
//          // //  enabledBorder: buildBorder(),
//           //  focusedBorder: buildBorder()
//            ),
//       ),
//     );
//   }


// }


class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? type;
  final InputDecoration? decoration;
  final String? hint;
  final Widget? suffix;
  final bool isClickable;
  final bool obscure;
  final StrutStyle? style;
  final VoidCallback? onTap;
  final VoidCallback? onPressedIcon;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const CustomTextField({
    Key? key,
    this.controller,
    this.type,
    this.decoration,
    this.hint,
    this.suffix,
    this.isClickable = true,
    this.obscure = false,
    this.style,
    this.onTap,
    this.onPressedIcon,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color:AppColorsLight.inputTextFormcolor ),
      strutStyle: style,
      obscureText: obscure,
      onChanged: onChanged,
      onTap: onTap,
      controller: controller,
      keyboardType: type,
      validator: validator,
      decoration: decoration ??
          InputDecoration(
            hintText: hint,
            hintStyle: Theme.of(context).textTheme.bodySmall,
            fillColor:AppColorsLight.textFormFieldFilledColor ,
            filled: true,
            border: InputBorder.none,
            suffixIcon: suffix,
          
            enabled: isClickable,
          ),
    );
  }
}


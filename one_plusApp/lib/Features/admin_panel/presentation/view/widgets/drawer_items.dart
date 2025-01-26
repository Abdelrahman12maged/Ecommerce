import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
   DrawerItem({super.key, required this.icon, required this.text,required this.onTap});
  final IconData icon;
  final String text;
  void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 0,
        child: ListTile(
          leading: Icon(icon),
          title: FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(text),
          ),
        ),
      ),
    );
  }
}

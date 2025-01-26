import 'package:flutter/material.dart';
import 'package:one_plus/Features/admin_panel/presentation/view/widgets/drawer_items.dart';
import 'package:one_plus/Features/admin_panel/presentation/view/widgets/user_circle_avatar_info.dart';

class CustomDrawer extends StatelessWidget {
  final Function(int) onOptionSelected;

  const CustomDrawer({super.key, required this.onOptionSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: UserInfoCircleAvtar()),
            SizedBox(height: 20),
            DrawerItem(
              icon: Icons.person,
              text: "All Users",
              onTap: () {
                onOptionSelected(0); // Notify parent about the selection
              },
            ),
            SizedBox(height: 20),
            DrawerItem(
              icon: Icons.shopping_cart,
              text: "All Products",
              onTap: () {
                onOptionSelected(1); // Notify parent about the selection
              },
            ),
          ],
        ),
      ),
    );
  }
}

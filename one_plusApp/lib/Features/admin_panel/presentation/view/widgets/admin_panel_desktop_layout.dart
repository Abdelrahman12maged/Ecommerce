import 'package:flutter/material.dart';
import 'package:one_plus/Features/admin_panel/presentation/view/widgets/all_product.dart';
import 'package:one_plus/Features/admin_panel/presentation/view/widgets/all_user_table.dart';
import 'package:one_plus/Features/admin_panel/presentation/view/widgets/custom_drawer.dart';

class AdminPanelDesktopLayout extends StatefulWidget {
  const AdminPanelDesktopLayout({super.key});

  @override
  _AdminPanelDesktopLayoutState createState() =>
      _AdminPanelDesktopLayoutState();
}

class _AdminPanelDesktopLayoutState extends State<AdminPanelDesktopLayout> {
  int selectedOption = 0; // Default option

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(
            onOptionSelected: (option) {
              setState(() {
                selectedOption = option; // Update the selected option
              });
            },
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  if (selectedOption == 0)
                    AllUsersTables()
                  else if (selectedOption == 1)
                    AllProductpanel(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

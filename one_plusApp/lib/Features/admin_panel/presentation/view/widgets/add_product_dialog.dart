import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_plus/Features/Auth/presentation/view/widgets/customTextField.dart';
import 'package:one_plus/Features/admin_panel/presentation/view/widgets/dorpdown_button.dart';

class AddProductDialog extends StatelessWidget {
  const AddProductDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Upload Producg"),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        GoRouter.of(context).pop();
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.black,
                      ))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text("Product Name :"),
              CustomTextField(
                hint: "enter product name",
              ),
              SizedBox(
                height: 15,
              ),
              Text("Brand Name :"),
              CustomTextField(
                hint: "enter Brand name",
              ),
              ElectricProductCategoryDropdown()
            ],
          ),
        ),
      ),
    );
  }
}

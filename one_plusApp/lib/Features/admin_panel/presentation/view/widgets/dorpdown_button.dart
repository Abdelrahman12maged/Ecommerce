import 'package:flutter/material.dart';

class ElectricProductCategoryDropdown extends StatefulWidget {
  @override
  _ElectricProductCategoryDropdownState createState() =>
      _ElectricProductCategoryDropdownState();
}

class _ElectricProductCategoryDropdownState
    extends State<ElectricProductCategoryDropdown> {
  // List of categories
  final List<String> categories = [
    'TV & Audio',
    'Home Appliances',
    'Lighting',
    'Smart Devices',
    'Power Tools',
  ];

  // Selected category
  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedCategory,
      hint: Text('Select a category'),
      isExpanded:
          true, // Makes the dropdown fill the width of its container
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.black87, fontSize: 16),
      underline: Container(
        height: 2,
        color: Colors.blueAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          selectedCategory = newValue;
        });
      },
      items: categories.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

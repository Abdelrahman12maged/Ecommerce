import 'package:flutter/material.dart';

class AllUsersTables extends StatelessWidget {
  const AllUsersTables({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder(
        horizontalInside: BorderSide(width: 0.5, color: Colors.grey[300]!),
        verticalInside: BorderSide(width: 0.5, color: Colors.grey[300]!),
      ),
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(1),
      },
      children: [
        _buildTableHeader(),
        _buildTableRow('1', 'John Doe', 'john.doe@example.com'),
        _buildTableRow('2', 'Jane Smith', 'jane.smith@example.com'),
        // Add more rows here for users
      ],
    );
  }

  TableRow _buildTableHeader() {
    return TableRow(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
      ),
      children: [
        _buildTableCell('User ID', isHeader: true),
        _buildTableCell('User Name', isHeader: true),
        _buildTableCell('Email', isHeader: true),
      ],
    );
  }

  TableRow _buildTableRow(String id, String name, String email) {
    return TableRow(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      children: [
        _buildTableCell(id),
        _buildTableCell(name),
        _buildTableCell(email),
      ],
    );
  }

  Widget _buildTableCell(String text, {bool isHeader = false}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          fontSize: 16,
          color: isHeader ? Colors.white : Colors.black87,
        ),
      ),
    );
  }
}

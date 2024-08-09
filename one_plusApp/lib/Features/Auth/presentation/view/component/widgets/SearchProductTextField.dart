
import 'package:flutter/material.dart';

class SearchProductTextField extends StatelessWidget {
  const SearchProductTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 350,
          height: 35,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "search product here ...",
              hintStyle: Theme.of(context).textTheme.bodySmall,
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(20))),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(20))),
          height: 35,
          child:
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ),
      ],
    );
  }
}
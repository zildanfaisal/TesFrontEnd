import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String hintText;

  const CustomDropdown({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
      items: const [
        DropdownMenuItem(value: "Option 1", child: Text("Option 1")),
        DropdownMenuItem(value: "Option 2", child: Text("Option 2")),
        DropdownMenuItem(value: "Option 3", child: Text("Option 3")),
      ],
      onChanged: (value) {},
    );
  }
}

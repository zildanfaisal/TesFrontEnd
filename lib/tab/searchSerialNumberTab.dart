import 'package:flutter/material.dart';
import 'package:my_web_tes/widget/customDropdown.dart';

class SearchSerialNumberTab extends StatelessWidget {
  const SearchSerialNumberTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
      child: Row(
        children: [
          const Expanded(
            child: CustomDropdown(hintText: "1. Printer Brand"),
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: CustomDropdown(hintText: "2. Printer Series"),
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: CustomDropdown(hintText: "3. Printer Model"),
          ),
          const SizedBox(width: 16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            ),
            child: const Text(
              "FIND CARTRIDGES",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

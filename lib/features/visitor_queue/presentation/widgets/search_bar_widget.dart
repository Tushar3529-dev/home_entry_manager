import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const SearchBarWidget({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),

      child: TextField(
        controller: controller,
        onChanged: onChanged,

        decoration: InputDecoration(
          border: InputBorder.none,

          hintText:
              'Search by unit, resident or phone',

          hintStyle: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 15,
          ),

          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),

          suffixIcon: controller.text.isNotEmpty
              ? IconButton(
                  onPressed: () {
                    controller.clear();
                    onChanged('');
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                )
              : null,

          contentPadding:
              const EdgeInsets.symmetric(
            vertical: 16,
          ),
        ),
      ),
    );
  }
}
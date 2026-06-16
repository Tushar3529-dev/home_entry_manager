import 'package:assignment/core/enums/filter_visitor.dart';
import 'package:assignment/core/widgets/app_chip.dart';
import 'package:flutter/material.dart';

class FilterChips extends StatelessWidget {

  final VisitorFilter selected;

  final ValueChanged<VisitorFilter> onChanged;

  const FilterChips({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: VisitorFilter.values.map((filter) {

          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: AppChip(
              title: filter.name,
              selected: selected == filter,
              onTap: () => onChanged(filter),
            ),
          );

        }).toList(),
      ),
    );
  }
}
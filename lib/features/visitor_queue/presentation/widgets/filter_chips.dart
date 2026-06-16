import 'package:assignment/core/enums/filter_visitor.dart';
import 'package:assignment/core/widgets/app_chip.dart';
import 'package:flutter/material.dart';

class FilterChips extends StatelessWidget {
  final VisitorFilter selected;

  final ValueChanged<VisitorFilter> onChanged;

  final int allCount;
  final int pendingCount;
  final int approvedCount;
  final int cancelledCount;

  const FilterChips({
    super.key,
    required this.selected,
    required this.onChanged,
    required this.allCount,
    required this.pendingCount,
    required this.approvedCount,
    required this.cancelledCount,
  });

  String _title(VisitorFilter filter) {
    switch (filter) {
      case VisitorFilter.All:
        return 'All ($allCount)';

      case VisitorFilter.Pending:
        return 'Pending ($pendingCount)';

      case VisitorFilter.Approved:
        return 'Approved ($approvedCount)';

      case VisitorFilter.Cancelled:
        return 'Cancelled ($cancelledCount)';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Row(
        children: VisitorFilter.values.map(
          (filter) {
            return Padding(
              padding:
                  const EdgeInsets.only(
                right: 10,
              ),

              child: AppChip(
                title: _title(filter),

                selected:
                    selected == filter,

                onTap: () =>
                    onChanged(filter),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
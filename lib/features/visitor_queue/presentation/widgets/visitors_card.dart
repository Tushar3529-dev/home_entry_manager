import 'package:assignment/core/constants/app_colors.dart';
import 'package:assignment/core/constants/app_radius.dart';
import 'package:assignment/core/enums/visitor_status.dart';
import 'package:assignment/features/visitor_queue/domain/entities/visitor_entity.dart';
import 'package:assignment/features/visitor_queue/presentation/widgets/status_icon.dart';
import 'package:flutter/material.dart';

class VisitorCard extends StatelessWidget {

  final VisitorEntity visitor;

  const VisitorCard({
    super.key,
    required this.visitor,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.border,
        ),
      ),

      child: Row(
        children: [

          StatusIcon(
            status: visitor.status,
          ),

          const SizedBox(width: 12),

          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              visitor.image,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(
                  "${visitor.unit} • ${visitor.type.name}",
                ),

                const SizedBox(height: 4),

                Text(
                  visitor.name,
                  style: AppTextStyles.cardTitle,
                ),

                const SizedBox(height: 4),

                Text(visitor.time),
              ],
            ),
          ),

          Text(
            visitor.status.name,
            style: TextStyle(
              color: _statusColor(
                visitor.status,
              ),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
  Color _statusColor(VisitorStatus status) {
  switch (status) {
    case VisitorStatus.pending:
      return Colors.orange;

    case VisitorStatus.approved:
      return Colors.green;

    case VisitorStatus.cancelled:
      return Colors.red;
  }
}
}
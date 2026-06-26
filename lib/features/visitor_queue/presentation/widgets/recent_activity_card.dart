import 'package:flutter/material.dart';

class RecentActivityCard extends StatelessWidget {
  final String title;
  final String unit;
  final String time;
  final String status;

  final IconData icon;

  final Color iconBackgroundColor;
  final Color iconColor;

  final Color statusBackgroundColor;
  final Color statusTextColor;

  const RecentActivityCard({
    super.key,
    required this.title,
    required this.unit,
    required this.time,
    required this.status,
    required this.icon,
    required this.iconBackgroundColor,
    required this.iconColor,
    required this.statusBackgroundColor,
    required this.statusTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.grey.shade200,
        ),
      ),

      child: Row(
        children: [

          /// Icon
          Container(
            height: 52,
            width: 52,

            decoration: BoxDecoration(
              color: iconBackgroundColor,
              shape: BoxShape.circle,
            ),

            child: Icon(
              icon,
              color: iconColor,
              size: 28,
            ),
          ),

          const SizedBox(width: 16),

          /// Title & Subtitle
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  '$unit  •  $time',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),

          /// Status
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 8,
            ),

            decoration: BoxDecoration(
              color: statusBackgroundColor,
              borderRadius: BorderRadius.circular(25),
            ),

            child: Text(
              status,
              style: TextStyle(
                color: statusTextColor,
                fontWeight: FontWeight.w700,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
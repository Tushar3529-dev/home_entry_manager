import 'package:flutter/material.dart';

import 'recent_activity_card.dart';

class RecentActivitySection extends StatelessWidget {
  final VoidCallback onViewAll;

  const RecentActivitySection({
    super.key,
    required this.onViewAll,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [

        /// Header
        Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
          children: [

            const Text(
              'Recent Activity',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            TextButton(
              onPressed: onViewAll,
              child: const Text(
                'View All',
                style: TextStyle(
                  color: Color(0xff0D9488),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        RecentActivityCard(
          title: 'Visitor',
          unit: 'Unit A101',
          time: '10:24 AM',
          status: 'Approved',
          icon: Icons.person_outline,
          iconBackgroundColor:
              const Color(0xffEEF2FF),
          iconColor:
              const Color(0xff4F46E5),
          statusBackgroundColor:
              const Color(0xffDCFCE7),
          statusTextColor:
              const Color(0xff15803D),
        ),

        const SizedBox(height: 12),

        RecentActivityCard(
          title: 'Amazon Package',
          unit: 'Unit B203',
          time: '09:40 AM',
          status: 'Approved',
          icon: Icons.inventory_2_outlined,
          iconBackgroundColor:
              const Color(0xffDBEAFE),
          iconColor:
              const Color(0xff2563EB),
          statusBackgroundColor:
              const Color(0xffDCFCE7),
          statusTextColor:
              const Color(0xff15803D),
        ),

        const SizedBox(height: 12),

        RecentActivityCard(
          title: 'Swiggy Delivery',
          unit: 'Unit C102',
          time: '08:55 AM',
          status: 'Approved',
          icon: Icons.fastfood_outlined,
          iconBackgroundColor:
              const Color(0xffFEF3C7),
          iconColor:
              const Color(0xffD97706),
          statusBackgroundColor:
              const Color(0xffDCFCE7),
          statusTextColor:
              const Color(0xff15803D),
        ),
      ],
    );
  }
}
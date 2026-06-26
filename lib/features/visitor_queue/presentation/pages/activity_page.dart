import 'package:assignment/core/widgets/app_bottom_navbar.dart';
import 'package:assignment/features/visitor_queue/presentation/pages/resident_search_page.dart';

import 'package:assignment/features/visitor_queue/presentation/widgets/recent_activity_section.dart';
import 'package:assignment/features/visitor_queue/presentation/widgets/security_action_card.dart';
import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFC),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,

        title: const Text(
          'Activity',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            /// SECURITY DESK
            const Text(
              "Security Desk",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            /// VISITOR ENTRY
            SecurityActionCard(
              title: "Visitor Entry",

              subtitle:
                  "Notify resident about\nvisitor arrival",

              icon: Icons.person,

              backgroundColor:
                  const Color(0xffFFF1F2),

              iconBackgroundColor:
                  const Color(0xffFEE2E2),

              iconColor:
                  const Color(0xffDC2626),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const ResidentSearchPage(),
                  ),
                );
              },
            ),

            const SizedBox(height: 16),

            /// DELIVERY
            SecurityActionCard(
              title:
                  "Package / Food Delivery",

              subtitle:
                  "Notify resident about\npackage or food delivery",

              icon:
                  Icons.inventory_2_outlined,

              backgroundColor:
                  const Color(0xffEFF6FF),

              iconBackgroundColor:
                  const Color(0xffDBEAFE),

              iconColor:
                  const Color(0xff2563EB),

              onTap: () {},
            ),

            const SizedBox(height: 32),

            /// RECENT ACTIVITY
            RecentActivitySection(
              onViewAll: () {},
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),

      bottomNavigationBar:
          AppBottomNavbar(
        currentIndex: 3,
        onTap: (index) {},
      ),
    );
  }
}
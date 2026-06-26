// home_page.dart

import 'package:assignment/core/widgets/app_bottom_navbar.dart';
import 'package:assignment/features/visitor_queue/presentation/pages/activity_page.dart';
import 'package:assignment/features/visitor_queue/presentation/pages/send_notification_page.dart';
import 'package:assignment/features/visitor_queue/presentation/pages/visitors_page.dart';
import 'package:flutter/material.dart';

import '../widgets/home_owner_card.dart';
import '../widgets/home_info_card.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: const Color(0xffF8FAFC),
  appBar: AppBar(
  elevation: 0,
  centerTitle: true,
  backgroundColor: Colors.white,

  title: const Text(
    'Home Manager',
    style: TextStyle(
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
  ),

  actions: [
    Padding(
      padding: const EdgeInsets.only(
        right: 12,
      ),
      child: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) =>
                  const SendNotificationPage(),
            ),
          );
        },
        icon: const Icon(
          Icons.notifications_none,
          color: Colors.black,
        ),
      ),
    ),
  ],
),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
Container(
  width: double.infinity,
  padding: const EdgeInsets.all(20),

  decoration: BoxDecoration(
    borderRadius:
        BorderRadius.circular(20),

    gradient: const LinearGradient(
      colors: [
        Color(0xff0D9488),
        Color(0xff14B8A6),
      ],
    ),
  ),

  child: const Column(
    crossAxisAlignment:
        CrossAxisAlignment.start,

    children: [

      Text(
        "Welcome Home",
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),

      SizedBox(height: 8),

      Text(
        "Manage visitors and notifications easily",
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
    ],
  ),
),

const SizedBox(height: 20),
            const HomeOwnerCard(
              name: 'Amit Sharma',
              address:
                  'Unit A101\nTrident Society\nSector 62, Noida',
              imageUrl:
                  'https://i.pravatar.cc/300?img=1',
            ),

            const SizedBox(height: 24),

            const HomeInfoCard(
              icon: Icons.home_outlined,
              title: 'Unit Number',
              value: 'A101',
            ),

            SizedBox(height: 12),

            const HomeInfoCard(
              icon: Icons.location_city,
              title: 'Society',
              value: 'Trident Society',
            ),

            SizedBox(height: 12),

            const HomeInfoCard(
              icon: Icons.person,
              title: 'Resident Type',
              value: 'Owner',
            ),

            SizedBox(height: 12),

            const HomeInfoCard(
              icon: Icons.phone,
              title: 'Contact',
              value: '+91 9876543210',
            ),
          ],
        ),
      ),

     bottomNavigationBar: AppBottomNavbar(
  currentIndex: 0,
  onTap: (index) {
    switch (index) {
      case 0:
        break;

      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const VisitorsPage(),
          ),
        );
        break;

       case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const ActivityPage(),
          ),
        );
        break;

      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const ActivityPage(),
          ),
        );
        break; 
    }
  },
),
    );
  }
}
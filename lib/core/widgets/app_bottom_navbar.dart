import 'package:flutter/material.dart';

class AppBottomNavbar extends StatelessWidget {

  final int currentIndex;
  final ValueChanged<int> onTap;

  const AppBottomNavbar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 50,
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      destinations: const [

        NavigationDestination(
          icon: Icon(Icons.dashboard_outlined),
          label: "Dashboard",
        ),

        NavigationDestination(
          icon: Icon(Icons.person_outline),
          label: "Visitors",
        ),

        NavigationDestination(
          icon: Icon(Icons.inventory_2_outlined),
          label: "Deliveries",
        ),

        NavigationDestination(
          icon: Icon(Icons.tune),
          label: "Activity",
        ),
      ],
    );
  }
}
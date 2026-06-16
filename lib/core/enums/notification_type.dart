import 'package:flutter/material.dart';

enum NotificationType {
  visitor,
  foodDelivery,
  packageDelivery,
}

extension NotificationTypeX on NotificationType {
  String get title {
    switch (this) {
      case NotificationType.visitor:
        return 'Visitor';

      case NotificationType.foodDelivery:
        return 'Food Delivery';

      case NotificationType.packageDelivery:
        return 'Package Delivery';
    }
  }

  String get description {
    switch (this) {
      case NotificationType.visitor:
        return 'Someone is at the gate to visit';

      case NotificationType.foodDelivery:
        return 'Food order has arrived';

      case NotificationType.packageDelivery:
        return 'Package has been delivered';
    }
  }

  IconData get icon {
    switch (this) {
      case NotificationType.visitor:
        return Icons.people;

      case NotificationType.foodDelivery:
        return Icons.fastfood;

      case NotificationType.packageDelivery:
        return Icons.inventory_2;
    }
  }
}
import 'package:flutter/material.dart';

class SecurityActionCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color backgroundColor;
  final Color iconBackgroundColor;
  final Color iconColor;
  final VoidCallback onTap;

  const SecurityActionCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.backgroundColor,
    required this.iconBackgroundColor,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),

        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.grey.shade200,
          ),
        ),

        child: Row(
          children: [

            Container(
              height: 68,
              width: 68,

              decoration: BoxDecoration(
                color: iconBackgroundColor,
                shape: BoxShape.circle,
              ),

              child: Icon(
                icon,
                color: iconColor,
                size: 34,
              ),
            ),

            const SizedBox(width: 18),

            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [

                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade700,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
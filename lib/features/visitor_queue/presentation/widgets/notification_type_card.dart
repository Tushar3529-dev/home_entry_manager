import 'package:flutter/material.dart';

class NotificationTypeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  const NotificationTypeCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),

        decoration: BoxDecoration(
          color: selected
              ? const Color(0xffF3FAF9)
              : Colors.white,

          borderRadius:
              BorderRadius.circular(16),

          border: Border.all(
            color: selected
                ? const Color(0xff0D9488)
                : Colors.grey.shade300,
            width: 1.5,
          ),
        ),

        child: Row(
          children: [

            CircleAvatar(
              radius: 28,
              backgroundColor:
                  selected
                      ? const Color(0xff0D9488)
                      : Colors.grey.shade200,

              child: Icon(
                icon,
                color: selected
                    ? Colors.white
                    : Colors.black54,
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight:
                          FontWeight.w700,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),

            if (selected)
              const Icon(
                Icons.check_circle,
                color: Color(0xff0D9488),
                size: 30,
              ),
          ],
        ),
      ),
    );
  }
}
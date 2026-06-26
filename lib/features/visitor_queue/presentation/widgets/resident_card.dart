import 'package:flutter/material.dart';

class ResidentCard extends StatelessWidget {
  final String name;
  final String unit;
  final String phone;
  final bool selected;
  final VoidCallback onTap;

  const ResidentCard({
    super.key,
    required this.name,
    required this.unit,
    required this.phone,
    required this.selected,
    required this.onTap,
  });

  String get initials {
    final parts = name.trim().split(' ');

    if (parts.length == 1) {
      return parts.first.substring(0, 1).toUpperCase();
    }

    return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),

        padding: const EdgeInsets.all(16),

        decoration: BoxDecoration(
          color: selected
              ? const Color(0xffECFDF5)
              : Colors.white,

          borderRadius: BorderRadius.circular(18),

          border: Border.all(
            color: selected
                ? const Color(0xff0D9488)
                : Colors.grey.shade300,
            width: 1.3,
          ),

          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.03),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),

        child: Row(
          children: [

            /// Avatar
            CircleAvatar(
              radius: 28,
              backgroundColor: const Color(0xff0D9488),

              child: Text(
                initials,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(width: 16),

            /// Information
            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    unit,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                    ),
                  ),

                  const SizedBox(height: 3),

                  Text(
                    phone,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),

            /// Arrow
            Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: Colors.grey.shade500,
            ),
          ],
        ),
      ),
    );
  }
}
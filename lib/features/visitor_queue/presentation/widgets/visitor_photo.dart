// presentation/widgets/visitor_photo_card.dart

import 'package:flutter/material.dart';

class VisitorPhotoCard extends StatelessWidget {
  const VisitorPhotoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          height: 180,
          width: double.infinity,

          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(16),

            image: const DecorationImage(
              image: NetworkImage(
                'https://picsum.photos/500',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Positioned(
          right: 12,
          bottom: 12,

          child: CircleAvatar(
            backgroundColor:
                Colors.white,

            child: IconButton(
              onPressed: () {},

              icon: const Icon(
                Icons.camera_alt_outlined,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
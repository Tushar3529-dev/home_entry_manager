import 'package:flutter/material.dart';

import '../widgets/resident_info_card.dart';
import '../widgets/visitor_photo.dart';
import '../widgets/notification_type_card.dart';

class SendNotificationPage extends StatefulWidget {
  const SendNotificationPage({super.key});

  @override
  State<SendNotificationPage> createState() =>
      _SendNotificationPageState();
}

class _SendNotificationPageState
    extends State<SendNotificationPage> {
  String selectedType = 'visitor';

  final notesController =
      TextEditingController();

  final otherController =
      TextEditingController();

  @override
  void dispose() {
    notesController.dispose();
    otherController.dispose();
    super.dispose();
  }

  void _resetForm() {
    notesController.clear();
    otherController.clear();

    setState(() {
      selectedType = 'visitor';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,

        title: const Text(
          'Send Notification',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding:
            const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            /// UNIT / RESIDENT
            const Text(
              'Unit / Resident',
              style: TextStyle(
                fontSize: 18,
                fontWeight:
                    FontWeight.w700,
              ),
            ),

            const SizedBox(height: 12),

            const ResidentInfoCard(
              unit: 'A101',
              name: 'Amit Sharma',
              address:
                  'Unit A101, Trident Society',
            ),

            const SizedBox(height: 24),

            /// NOTIFICATION TYPE
            const Text(
              'Notification Type',
              style: TextStyle(
                fontSize: 18,
                fontWeight:
                    FontWeight.w700,
              ),
            ),

            const SizedBox(height: 12),

            NotificationTypeCard(
              title: 'Visitor',
              subtitle:
                  'Someone is at the gate to visit',
              icon: Icons.people,
              selected:
                  selectedType ==
                      'visitor',
              onTap: () {
                setState(() {
                  selectedType =
                      'visitor';
                });
              },
            ),

            const SizedBox(height: 12),

            NotificationTypeCard(
              title: 'Food Delivery',
              subtitle:
                  'Food order has arrived',
              icon: Icons.fastfood,
              selected:
                  selectedType ==
                      'foodDelivery',
              onTap: () {
                setState(() {
                  selectedType =
                      'foodDelivery';
                });
              },
            ),

            const SizedBox(height: 12),

            NotificationTypeCard(
              title:
                  'Package Delivery',
              subtitle:
                  'Package has been delivered',
              icon:
                  Icons.inventory_2,
              selected:
                  selectedType ==
                      'packageDelivery',
              onTap: () {
                setState(() {
                  selectedType =
                      'packageDelivery';
                });
              },
            ),

            const SizedBox(height: 12),

            NotificationTypeCard(
              title: 'Other',
              subtitle:
                  'Custom notification',
              icon:
                  Icons.edit_note_outlined,
              selected:
                  selectedType ==
                      'other',
              onTap: () {
                setState(() {
                  selectedType =
                      'other';
                });
              },
            ),

            if (selectedType ==
                'other') ...[
              const SizedBox(
                  height: 12),

              TextField(
                controller:
                    otherController,

                decoration:
                    InputDecoration(
                  hintText:
                      'Enter custom notification',

                  border:
                      OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(
                            12),
                  ),
                ),
              ),
            ],

            const SizedBox(height: 24),

            /// VISITOR PHOTO
            const Text(
              'Visitor Photo',
              style: TextStyle(
                fontSize: 18,
                fontWeight:
                    FontWeight.w700,
              ),
            ),

            const SizedBox(height: 12),

            const VisitorPhotoCard(),

            const SizedBox(height: 24),

            /// NOTES
            const Text(
              'Notes (Optional)',
              style: TextStyle(
                fontSize: 18,
                fontWeight:
                    FontWeight.w700,
              ),
            ),

            const SizedBox(height: 12),

            TextField(
              controller:
                  notesController,

              maxLength: 120,
              maxLines: 3,

              decoration:
                  InputDecoration(
                hintText:
                    'Add any notes...',

                border:
                    OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(
                          12),
                ),
              ),
            ),

            const SizedBox(height: 24),

            /// SEND BUTTON
            SizedBox(
              width:
                  double.infinity,
              height: 56,

              child:
                  ElevatedButton.icon(
                icon: const Icon(
                  Icons.send,
                  color:
                      Colors.white,
                ),

                label: const Text(
                  'Send Notification',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:
                        FontWeight
                            .w600,
                  ),
                ),

                style:
                    ElevatedButton
                        .styleFrom(
                  backgroundColor:
                      const Color(
                          0xff0D9488),

                  foregroundColor:
                      Colors.white,

                  shape:
                      RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius
                            .circular(
                                14),
                  ),
                ),

                onPressed: () {
                  _resetForm();

                  ScaffoldMessenger.of(
                          context)
                      .showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Notification Sent',
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
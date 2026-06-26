
import 'package:assignment/features/visitor_queue/presentation/pages/send_notification_page.dart';
import 'package:assignment/features/visitor_queue/presentation/widgets/resident_card.dart';
import 'package:assignment/features/visitor_queue/presentation/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class ResidentSearchPage extends StatefulWidget {
  const ResidentSearchPage({super.key});

  @override
  State<ResidentSearchPage> createState() =>
      _ResidentSearchPageState();
}

class _ResidentSearchPageState
    extends State<ResidentSearchPage> {

  final TextEditingController searchController =
      TextEditingController();

  int selectedIndex = -1;

  final residents = [

    (
      name: "Amit Sharma",
      unit: "A101 • Trident Society",
      phone: "+91 9876543210",
    ),

    (
      name: "Priya Sharma",
      unit: "B203 • Trident Society",
      phone: "+91 9876543211",
    ),

    (
      name: "Rahul Verma",
      unit: "C105 • Trident Society",
      phone: "+91 9876543212",
    ),

    (
      name: "Neha Singh",
      unit: "D110 • Trident Society",
      phone: "+91 9876543213",
    ),
  ];

  List<
      ({
        String name,
        String unit,
        String phone,
      })> filteredResidents = [];

  @override
  void initState() {
    super.initState();

    filteredResidents = residents;
  }

  void search(String value) {

    setState(() {

      filteredResidents = residents.where((resident) {

        return resident.name
                .toLowerCase()
                .contains(
                  value.toLowerCase(),
                ) ||

            resident.unit
                .toLowerCase()
                .contains(
                  value.toLowerCase(),
                ) ||

            resident.phone
                .contains(value);

      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:
          const Color(0xffF8FAFC),

      appBar: AppBar(

        backgroundColor: Colors.white,

        elevation: 0,

        centerTitle: true,

        title: const Text(
          "Select Resident",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(

        padding:
            const EdgeInsets.all(16),

        child: Column(

          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            SearchBarWidget(
              controller:
                  searchController,

              onChanged: search,
            ),

            const SizedBox(height: 24),

            const Text(
              "Residents",
              style: TextStyle(
                fontSize: 20,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            Expanded(

              child:
                  ListView.separated(

                itemCount:
                    filteredResidents
                        .length,

                separatorBuilder:
                    (_, __) =>
                        const SizedBox(
                  height: 12,
                ),

                itemBuilder:
                    (context, index) {

                  final resident =
                      filteredResidents[
                          index];

                  return ResidentCard(

                    name:
                        resident.name,

                    unit:
                        resident.unit,

                    phone:
                        resident.phone,

                    selected:
                        selectedIndex ==
                            index,

                    onTap: () {

                      setState(() {

                        selectedIndex =
                            index;

                      });

                    },
                  );
                },
              ),
            ),

            SafeArea(

              child: SizedBox(

                width:
                    double.infinity,

                height: 56,

                child:
                    ElevatedButton(

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
                          BorderRadius.circular(
                              16),

                    ),
                  ),

                  onPressed:
                          selectedIndex ==
                              -1
                      ? null
                      : () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  const SendNotificationPage(),
                            ),
                          );
                        },

                  child:
                      const Text(

                    "Continue",

                    style: TextStyle(
                      fontSize: 18,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
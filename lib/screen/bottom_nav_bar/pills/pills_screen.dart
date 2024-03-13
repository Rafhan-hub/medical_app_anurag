import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class PillsScreen extends StatefulWidget {
  const PillsScreen({super.key});

  @override
  State<PillsScreen> createState() => _PillsScreenState();
}

class _PillsScreenState extends State<PillsScreen> {
  DateTime? selectedDate;
  DateTime? currentDate;
  final Map<DateTime, List<NeatCleanCalendarEvent>> _events = {};
  List<ListItemModel> listItemArray = [
    ListItemModel(
      "12 PM",
      [],
    ),
    ListItemModel(
      "01 PM",
      [],
    ),
    ListItemModel(
      "02 PM",
      [],
    ),
    ListItemModel(
      "03 PM",
      [
        TabletDetails("Paracetamol 500mg"),
        TabletDetails("Favipiravir 200mg"),
        TabletDetails("Paracetamol 500mg"),
        // Add more TabletDetails instances as needed
      ],
    ),
    ListItemModel(
      "04 PM",
      [],
    ),
    ListItemModel(
      "05 PM",
      [],
    ),
    ListItemModel(
      "06 PM",
      [
        TabletDetails("Vitamin C 500mg"),
      ],
    ),
    ListItemModel(
      "07 PM",
      [],
    ),
    ListItemModel(
      "08 PM",
      [],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: Get.width,
            height: 150,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 68, 220, 182),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: const Offset(0, 3), // shadow direction: bottom
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 20),
                  //   child: GestureDetector(
                  //     onTap: () => Get.back(),
                  //     child: const Icon(Icons.arrow_back, size: 30, color: Colors.white)
                  //   ),
                  // ),
                  Spacer(),
                  Text(
                    'Prescription',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          SizedBox(
            width: Get.width * 0.9,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 2), // shadow direction: bottom
                      ),
                    ]),
                child: SizedBox(
                  height: 150,
                  child: Calendar(
                    startOnMonday: true,
                    hideBottomBar: true,
                    hideTodayIcon: true,
                    eventDoneColor: HexColor('030FA4'),
                    eventColor: HexColor('030FA4'),
                    bottomBarArrowColor: HexColor('030FA4'),
                    weekDays: const [
                      'MON',
                      'TUE',
                      'WED',
                      'THU',
                      'FRI',
                      'SAT',
                      'SUN'
                    ],
                    events: _events,
                    locale: 'en_US',
                    isExpanded: false,
                    onDateSelected: (date) {
                      selectedDate = date;
                      setState(() {});
                    },
                    dayOfWeekStyle: TextStyle(
                      color: HexColor('C4C2CC'),
                      fontWeight: FontWeight.w700,
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listItemArray.length, // Replace with your desired number of items
              itemBuilder: (BuildContext context, int index) {
                var item = listItemArray[index];
                return item.tablets.isEmpty
                    ? Center(
                      child: SizedBox(
                        width: Get.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20, right: 0),
                          child: Row(
                            children: [
                              Text(item.time),
                              const Spacer(),
                              SizedBox(
                                width: Get.width * 0.78,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: const BoxDecoration(
                                        color: Color.fromARGB(255, 238, 152, 152),
                                        shape: BoxShape.circle
                                      ),
                                    ),
                                    Container(
                                      width: Get.width * 0.75,
                                      height: 2,
                                      decoration: const BoxDecoration(
                                          color: Color.fromARGB(255, 238, 152, 152)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    : Center(
                      child: SizedBox(
                        width: Get.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.time),
                              const SizedBox(width: 10),
                              Expanded(
                                child: ListView.builder(
                                    itemCount: item.tablets.length,
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemBuilder: (BuildContext context, int index) {
                                      var tablet = item.tablets[index];
                                      return Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(bottom: 20),
                                          child: Row(
                                          children: [
                                            Container(
                                              width: Get.width * 0.75,
                                              height: 90,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                  borderRadius:
                                                      BorderRadius.circular(16.0)),
                                              child: Row(
                                                children: [
                                                  const SizedBox(width: 12),
                                                  Container(
                                                    height: 50,
                                                    width: 2,
                                                    decoration: BoxDecoration(
                                                      color: Colors.amber,
                                                      borderRadius:
                                                          BorderRadius.circular(2),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 20),
                                                  const Icon(Icons.medication_outlined),
                                                  const SizedBox(width: 25),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Text(tablet.tableName),
                                                      const SizedBox(height: 10),
                                                      const Text('Dose 1 Tablet'),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        ),
                                      );
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class ListItemModel {
  final String time;
  final List<TabletDetails> tablets;

  ListItemModel(this.time, this.tablets);
}

class TabletDetails {
  final String tableName;
  TabletDetails(this.tableName);
}

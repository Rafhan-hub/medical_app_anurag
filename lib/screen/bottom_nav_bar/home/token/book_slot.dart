import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookSlotScreen extends StatefulWidget {
  const BookSlotScreen({super.key});

  @override
  State<BookSlotScreen> createState() => _BookSlotScreenState();
}

class _BookSlotScreenState extends State<BookSlotScreen> {
  String selectedTime = '';
  List<String> timeSlots = [
    '12:30 AM', '01:00 PM', '01:30 PM',
    '02:00 PM', '02:30 PM', '03:00 PM',
    '03:30 PM', '04:00 PM', '04:30 PM',
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: GestureDetector(
                            onTap: () => Get.back(),
                            child: const Icon(Icons.arrow_back,
                                size: 30, color: Colors.white)),
                      ),
                      const Spacer(),
                      const Text(
                        'Book Your Time Slot',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: Get.width * 0.9,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          offset: const Offset(0, 0),
                          blurRadius: 5)
                    ],
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 110,
                              height: 165,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Icon(Icons.person, size: 50),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0, top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Dr. Gautam Singh',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'MBBS,MD',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          borderRadius: BorderRadius.circular(12),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.shade200,
                                                offset: const Offset(0, 0),
                                                blurRadius: 5)
                                          ],
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Text(
                                            'Physiotherapist',
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      // const SizedBox(width: 15),
                                      // Container(
                                      //   color: Colors.grey,
                                      //   height: 30,
                                      //   width: 1,
                                      // ),
                                    ],
                                  ),
                                  // rating
                                  // Container(
                                  //       decoration: BoxDecoration(
                                  //         color: Colors.grey.shade200,
                                  //         borderRadius: BorderRadius.circular(12),
                                  //         boxShadow: [
                                  //           BoxShadow(
                                  //             color: Colors.grey.shade200,
                                  //             offset: const Offset(0, 0),
                                  //             blurRadius: 5
                                  //           )
                                  //         ],
                                  //       ),
                                  //       child: const Padding(
                                  //         padding: EdgeInsets.all(10.0),
                                  //         child: Row(
                                  //           children: [
                                  //             Icon(
                                  //               Icons.star_outline_rounded,
                                  //               color: Colors.amber,
                                  //             ),
                                  //             Text(
                                  //               '4.6',
                                  //               style: TextStyle(
                                  //                 decoration: TextDecoration.none,
                                  //                 color: Colors.black,
                                  //                 fontSize: 16,
                                  //                 fontWeight: FontWeight.w600
                                  //               ),
                                  //             ),
                                  //           ],
                                  //         ),
                                  //       ),
                                  //     ),
                                  const SizedBox(height: 10),
                                  const Row(
                                    children: [
                                      Icon(Icons.medical_information_outlined),
                                      SizedBox(width: 10),
                                      Text(
                                        'Exp: 8 years+',
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: Get.width * 0.9,
                          child: CustomPaint(
                            painter: DottedLinePainter(),
                          ),
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: Get.width * 0.9,
                          child: RichText(
                            text: const TextSpan(
                                text: 'Languages Known -',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' English, Tamil, Hindi',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal),
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: Get.width * 0.9,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          offset: const Offset(0, 0),
                          blurRadius: 5)
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            const Text(
                              'Select Schedule',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade200,
                                      offset: const Offset(0, 0),
                                      blurRadius: 5)
                                ],
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month_rounded,
                                      size: 30,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Thu 05 Nov, 2022',
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Calendar(),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: Get.width * 0.9,
                // height: 200,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          offset: const Offset(0, 0),
                          blurRadius: 5)
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            const Text(
                              'Available Slots',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 213, 242, 214),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade200,
                                      offset: const Offset(0, 0),
                                      blurRadius: 5)
                                ],
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Text(
                                  '7 slots available',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Color.fromARGB(255, 37, 112, 39),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                        child: TimeSlotsScreen(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                        child: GridView.count(
                          crossAxisCount: 3, // Number of items per row
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          childAspectRatio: 1.8, // Aspect ratio of each item
                          shrinkWrap: true, // Allow the grid to fit into the viewport
                          physics: const NeverScrollableScrollPhysics(), // Disable scrolling
                          children: List.generate(
                            timeSlots.length,
                            (index) => InkWell(
                              onTap: () {
                                setState(() {
                                  selectedTime = timeSlots[index];
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: selectedTime == timeSlots[index]
                                  ? const Color.fromARGB(255, 238, 152, 152)
                                  : Colors.transparent,
                                  border: Border.all(
                                    color: selectedTime == timeSlots[index]
                                    ? const Color.fromARGB(255, 238, 152, 152)
                                    : Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    timeSlots[index],
                                    style: TextStyle(
                                      color: selectedTime == timeSlots[index]
                                      ? Colors.white
                                      : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: Get.width * 0.9,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    // Add your next button onPressed event here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 5, 45, 132), // Color of the button
                    foregroundColor: Colors.white, // Color of the text
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                  child: const Text(
                    'Done',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

// dotted line

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    const double dashWidth = 5;
    const double dashSpace = 5;
    double startX = 0.0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// calendar
class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime selectedDate = DateTime.now(); // TO tracking date

  int currentDateSelectedIndex = 0; //For Horizontal Date
  ScrollController scrollController =
      ScrollController(); //To Track Scroll of ListView

  List<String> listOfMonths = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          color: Colors.white,
          height: 90,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 30);
            },
            itemCount: 365,
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    currentDateSelectedIndex = index;
                    selectedDate = DateTime.now().add(Duration(days: index));
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  child: Container(
                    height: 80,
                    width: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              offset: const Offset(0, 0),
                              blurRadius: 5)
                        ],
                        color: currentDateSelectedIndex == index
                            ? const Color.fromARGB(255, 238, 152, 152)
                            : Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // if show month on top
                        // Text(
                        //   listOfMonths[DateTime.now()
                        //     .add(Duration(days: index)).month - 1].toString(),
                        //   style: TextStyle(
                        //       fontSize: 16,
                        //       color: currentDateSelectedIndex == index
                        //           ? Colors.white
                        //           : Colors.grey),
                        // ),
                        Text(
                          listOfDays[DateTime.now()
                                      .add(Duration(days: index))
                                      .weekday -
                                  1]
                              .toString(),
                          style: TextStyle(
                              fontSize: 16,
                              color: currentDateSelectedIndex == index
                                  ? Colors.white
                                  : Colors.grey),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          DateTime.now()
                              .add(Duration(days: index))
                              .day
                              .toString(),
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: currentDateSelectedIndex == index
                                  ? Colors.white
                                  : Colors.grey),
                        ),
                        const SizedBox(
                          height: 5,
                        ),

                        // if day show on bottom
                        // Text(
                        //   listOfDays[DateTime.now()
                        //     .add(Duration(days: index)).weekday - 1].toString(),
                        //   style: TextStyle(
                        //       fontSize: 16,
                        //       color: currentDateSelectedIndex == index
                        //           ? Colors.white
                        //           : Colors.grey),
                        // ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}

//
class TimeSlotsScreen extends StatefulWidget {
  const TimeSlotsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TimeSlotsScreenState createState() => _TimeSlotsScreenState();
}

class _TimeSlotsScreenState extends State<TimeSlotsScreen> {
  String _selectedTime = 'Morning'; // Default selected time

  void _selectTime(String time) {
    setState(() {
      _selectedTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () => _selectTime('Morning'),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  color: _selectedTime == 'Morning'
                      ? Colors.grey.shade100
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Morning',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => _selectTime('Afternoon'),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  color: _selectedTime == 'Afternoon'
                      ? Colors.grey.shade100
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Afternoon',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => _selectTime('Evening'),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  color: _selectedTime == 'Evening'
                      ? Colors.grey.shade100
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Evening',
                  style: TextStyle(
                    color: Colors.black,
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

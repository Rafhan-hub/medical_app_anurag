import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhysiotherapistScreen extends StatefulWidget {
  const PhysiotherapistScreen({super.key});

  @override
  State<PhysiotherapistScreen> createState() => _PhysiotherapistScreenState();
}

class _PhysiotherapistScreenState extends State<PhysiotherapistScreen> {
  @override
   Widget build(BuildContext context) {
    return Container(
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
                          child: const Icon(Icons.arrow_back, size: 30, color: Colors.white)
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'Physiotherapist',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: Get.width * 0.9,
                child: const Text(
                  'Appointment Type',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.normal
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: Get.width * 0.9,
                height: 70,
                child: const DropdownList(hint: '-Select-',)
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: Get.width * 0.9,
                 child: RichText(
                      text: const TextSpan(
                        text: 'Clinic Type',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' (optional)',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.grey, 
                                fontSize: 18,
                                fontWeight: FontWeight.normal
                              ),
                            )
                          ]
                        ),
                    ),
               ),
              const SizedBox(height: 20),
              SizedBox(
                width: Get.width * 0.9,
                height: 70,
                child: const DropdownList(hint: 'Select clinic',)
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: Get.width * 0.9,
                child: const Row(
                  children: [
                    Icon(
                      Icons.calendar_month_rounded,
                      size: 40,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Thursday 05 Nov, 2022',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Calendar(),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: Get.width * 0.9,
                 child: RichText(
                      text: const TextSpan(
                        text: 'Main Complaint',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' (optional)',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.grey, 
                                fontSize: 18,
                                fontWeight: FontWeight.normal
                              ),
                            )
                          ]
                        ),
                    ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: Get.width * 0.9,
                child: CustomTextInput()
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
                    backgroundColor: Colors.blueGrey, // Color of the button
                    foregroundColor: Colors.white, // Color of the text
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
      ),
    );
  }
}

class DropdownList extends StatefulWidget {
  final String hint;
  const DropdownList({super.key, required this.hint});

  @override
  // ignore: library_private_types_in_public_api
  _DropdownListState createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: _selectedItem,
            hint: Row(
              children: [
                Text(widget.hint),
              ],
            ),
            onChanged: (String? newValue) {
              setState(() {
                _selectedItem = newValue;
              });
            },
            items: <String>['Item 1', 'Item 2', 'Item 3', 'Item 4']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

// Text box
class CustomTextInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: TextField(
          maxLines: 5,
          decoration: InputDecoration(
            hintText: 'Write',
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          ),
        ),
      ),
    );
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
                selectedDate =
                    DateTime.now().add(Duration(days: index));
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
                        .add(Duration(days: index)).weekday - 1].toString(),
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
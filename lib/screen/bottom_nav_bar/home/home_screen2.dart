import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app_anurag/screen/bottom_nav_bar/home/book_appointment/book_appointment.dart';
import 'package:medical_app_anurag/screen/bottom_nav_bar/home/prescription/prescription.dart';
import 'package:medical_app_anurag/screen/bottom_nav_bar/home/token/book_slot.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {

  List<FeelingsList> feelingsList = <FeelingsList>[
    FeelingsList(emoji: '😰', feeling: 'Feel Cold'),
    FeelingsList(emoji: '🤒', feeling: 'High Temprature'),
    FeelingsList(emoji: '🤢', feeling: 'Thorat Infection'),
    FeelingsList(emoji: '😰', feeling: 'Feel Cold'),
    FeelingsList(emoji: '🤒', feeling: 'High Temprature'),
  ];

    List<FeatureList> featureList = [
    FeatureList(emoji: '😰', feeling: 'Medical Reports'),
    FeatureList(emoji: '🤒', feeling: 'Prescription'),
    FeatureList(emoji: '🤢', feeling: 'Token'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 6,
                      offset: const Offset(0, 6), // shadow direction: bottom
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: Get.width * 0.9,
                      child: Row(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black),
                            ),
                            child: const Icon(Icons.person, size: 50),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello, Rahul!',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Good Morning!',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'MR Number : 2113637731',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(14)
                              ),
                              child: const Icon(Icons.notifications)
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // feelings listview
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: 55,
                  child: ListView.builder(
                    itemCount: feelingsList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5, bottom: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                            child: Row(
                              children: [
                                Text(
                                  feelingsList[index].emoji.toString()
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  feelingsList[index].feeling.toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // Book appointment container
              Container(
                width: Get.width * 0.9,
                height: 140,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: NetworkImage('https://wallpaperaccess.com/full/2440003.jpg'),
                    fit: BoxFit.fill
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'How Are You Feeling Today?',
                        style: TextStyle(
                          fontSize: 16,          
                          color: Colors.black,      
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.white)
                            )
                          )
                        ),
                        onPressed: () => Get.to(() => const BookAppointmentScreen()),
                        child: const Text(
                          "Book Appointment",
                          style: TextStyle(
                            fontSize: 10,          
                            color: Colors.black,      
                            fontWeight: FontWeight.w500
                          )
                        )
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 160,
                width: Get.width * 0.9,
                child: ListView.builder(
                  itemCount: featureList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context, index) {
                    return SizedBox(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                height: 140,
                                width: Get.width / 3.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0,
                                      blurRadius: 10,
                                      offset: const Offset(0, 0), // no offset, shadow is spread around
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Container(
                                        height: 60,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey.shade200,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Center(
                                            child: Text(
                                              featureList[index].emoji.toString(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15, left: 10, right: 12),
                                      child: Text(
                                        featureList[index].feeling.toString(),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                ),
              ),
              const SizedBox(height: 20),
            
              SizedBox(
                width: Get.width * 0.9,
                child: const Text(
                  'Today Booking',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: 260,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                        width: Get.width * 0.85,
                        // height: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                width: Get.width * 0.85,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 166, 218, 225),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child:  const Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                                          child: Text(
                                            'Physiotherapy',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5, left: 20, right: 20),
                                          child: Row(
                                            children: [
                                              Icon(Icons.calendar_month_outlined, color: Colors.white, size: 20),
                                              SizedBox(width: 5),
                                              Text(
                                                '18 Dec 2023 . 08:00-9:00',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5, left: 20, right: 20),
                                          child: Row(
                                            children: [
                                              Icon(Icons.medical_services_outlined, color: Colors.white, size: 20),
                                              SizedBox(width: 5),
                                              Text(
                                                'Dr. Rakulpreet Kaur',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                width: Get.width * 0.85,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                                      child: Text(
                                        'Booking Number : IPD228310',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 5, left: 20, right: 20),
                                      child: Text(
                                        'Center : XYZ',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20, right: 20),
                                      child: Row(
                                        children: [
                                          const Icon(Icons.insert_link_outlined, color: Colors.grey),
                                          const SizedBox(width: 10),
                                          Text(
                                            'Physiotherapy report.pdf',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                                            ),
                      );
                    }
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

class FeelingsList {
  String? emoji;
  String? feeling;
  FeelingsList({this.emoji, this.feeling});
}

class FeatureList {
  String? emoji;
  String? feeling;
  FeatureList({this.emoji, this.feeling});
}
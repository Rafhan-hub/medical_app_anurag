import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:medical_app_anurag/screen/bottom_nav_bar/home/book_appointment/book_appointment.dart';
import 'package:medical_app_anurag/screen/bottom_nav_bar/home/prescription/prescription.dart';
import 'package:medical_app_anurag/screen/bottom_nav_bar/home/token/book_slot.dart';

import 'physiotherapist/physiotherapist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    const SizedBox(height: 20),
                    SizedBox(
                      width: Get.width * 0.9,
                      child: Row(
                        children: [
                          const Icon(Icons.calendar_month_outlined, size: 30,),
                          const SizedBox(width: 5),
                          const Text(
                            'MON, 18 DEC 2023',
                            style: TextStyle(
                              fontSize: 15
                            ),
                          ),
                          const Spacer(),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(16)
                            ),
                            child: const Icon(Icons.notifications)
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: Get.width * 0.9,
                      child: Row(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Icon(Icons.person, size: 50),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello, Rahul!',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'MR Number : 2113637731',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              SizedBox(
                width: Get.width * 0.9,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        debugPrint('tapped book appointment');
                        Get.to(() => const BookAppointmentScreen());
                      },
                      child: Container(
                        height: 200,
                        width: Get.width / 2.33,
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
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20, left: 20),
                                  child: Container(
                                    height: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey.shade200,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Icon(Icons.calendar_month, size: 30),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 30, left: 20, right: 12),
                                  child: Text(
                                    'Book Appointment',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, right: 20),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: const Icon(FluentIcons.arrow_up_right_48_regular, size: 16,)
                                ),
                              ),
                            ),
                          ]
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 200,
                      width: Get.width / 2.33,
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
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20, left: 20),
                                child: Container(
                                  height: 80,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.shade200,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Icon(Icons.medical_information_rounded, size: 30),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 30, left: 20),
                                child: Text(
                                  'Medical Reports',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, right: 20),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: const Icon(FluentIcons.arrow_up_right_48_regular, size: 16,)
                              ),
                            ),
                          ),
                        ]
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: Get.width * 0.9,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        debugPrint('book slot tapped');
                        Get.to(() => const BookSlotScreen());
                      },
                      child: Container(
                        height: 200,
                        width: Get.width / 2.33,
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
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20, left: 20),
                                  child: Container(
                                    height: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey.shade200,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Icon(Icons.star_outline_outlined, color: Colors.orange, size: 30),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 30, left: 20),
                                  child: Text(
                                    'Token',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, right: 20),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: const Icon(FluentIcons.arrow_up_right_48_regular, size: 16,)
                                ),
                              ),
                            ),
                          ]
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        debugPrint('tapped prescription');
                        Get.to(() => const PrescriptionScreen());
                      },
                      child: Container(
                        height: 200,
                        width: Get.width / 2.33,
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
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20, left: 20),
                                  child: Container(
                                    height: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey.shade200,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Icon(Icons.medical_services, size: 30),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 30, left: 20),
                                  child: Text(
                                    'Prescription',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, right: 20),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: const Icon(FluentIcons.arrow_up_right_48_regular, size: 16,)
                                ),
                              ),
                            ),
                          ]
                        ),
                      ),
                    ),
                  ],
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
              Container(
                width: Get.width * 0.9,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: Get.width * 0.9,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 166, 218, 225),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child:  Row(
                          children: [
                            const Column(
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
                                  padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                                  child: Text(
                                    '18 Dec 2023 . 08:00-9:00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                                  child: Text(
                                    'Dr. Rakulpreet Kaur',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                debugPrint('PhysiotherapistScreen tapped');
                                Get.to(() => const PhysiotherapistScreen());
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 241, 160, 186)
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Icon(Icons.arrow_forward_sharp, color: Colors.white, size: 30),
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: Get.width * 0.9,
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
                                'Booking Number : IPD222300138310',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  const Icon(Icons.insert_link_outlined),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Physiotherapy report.pdf',
                                    style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
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
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class PrescriptionScreen extends StatefulWidget {
  const PrescriptionScreen({super.key});

  @override
  State<PrescriptionScreen> createState() => _PrescriptionScreenState();
}

class _PrescriptionScreenState extends State<PrescriptionScreen> {
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
                      'Prescription',
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
            Expanded(
              child: ListView.builder(
                itemCount: 3, // Replace with your desired number of items
                itemBuilder: (BuildContext context, int index) {
                  return const CustomListItem(
                    title: 'Toothache',
                    bookingType: 'OPD',
                    bookingNo: 'IPD2233422422',
                    prescriptionDate: '09/12/2022',
                    doctorName: 'Dr. Akash Metha',
                    center: 'Patanjali Yogpeeth Haridwar',
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

class CustomListItem extends StatelessWidget {
  final String title;
  final String bookingType;
  final String bookingNo;
  final String prescriptionDate;
  final String doctorName;
  final String center;

  const CustomListItem(
  { 
    super.key, 
    required this.title,
    required this.bookingType,
     required this.bookingNo,
     required this.prescriptionDate,
    required this.doctorName,
    required this.center,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'Booking Type: ',
                          style: const TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 15
                          ),
                          children: <TextSpan>[
                            TextSpan(text: bookingType,
                              style: const TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.grey, 
                                fontSize: 15
                              ),
                            )
                          ]
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Text(
                  'Booking No: $bookingNo',
                  style: const TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.grey,
                    fontSize: 16.0
                  ),
                ),
                const SizedBox(height: 15.0),
                Text(
                  'Doctor Name: $doctorName',
                  style: const TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0
                  ),
                ),
                const SizedBox(height: 15.0),
                RichText(
                  text: TextSpan(
                    text: 'Booking Date: ',
                    style: const TextStyle(
                      decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: 15
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: prescriptionDate,
                          style: const TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.grey, 
                            fontSize: 15
                          ),
                        )
                      ]
                    ),
                ),
                const SizedBox(height: 15.0),
                RichText(
                  text: TextSpan(
                    text: 'Center: ',
                    style: const TextStyle(
                      decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: 15
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: center,
                          style: const TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.grey, 
                            fontSize: 15
                          ),
                        )
                      ]
                    ),
                ),
                const SizedBox(height: 15.0),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.withOpacity(0.5),
            thickness: 1,
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              SizedBox(width: 50),
              Icon(
                Icons.print,
                color: Colors.blueGrey,
              ),
              SizedBox(width: 10),
              Text(
                'Print',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0
                ),
              ),
              Spacer(),
              Icon(
                Icons.remove_red_eye,
                color: Colors.blueGrey,
              ),
              SizedBox(width: 10),
              Text(
                'View',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0
                ),
              ),
              SizedBox(width: 50),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

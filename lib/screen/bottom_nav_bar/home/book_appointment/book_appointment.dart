import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app_anurag/controller/book_appointment_controller.dart';
import 'package:medical_app_anurag/model/department_model.dart';

class BookAppointmentScreen extends StatefulWidget {
  const BookAppointmentScreen({super.key});

  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  BookAppointmentController controller = Get.put(BookAppointmentController());
  late GridItemModel selectedItem;

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
                      'Book Appointment',
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
            const SizedBox(height: 30),
             SizedBox(
              width: Get.width * 0.9,
               child: const Text(
                'Choose Department',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // 2 cells per row
                padding: const EdgeInsets.all(16.0),
                mainAxisSpacing: 10.0, // Space between rows
                crossAxisSpacing: 10.0, 
                 childAspectRatio: 2,
                 children: controller.gridItems.map((item) {
                  return GridItem(
                    item: item,
                       onSelected: (isSelected) {
                  setState(() {
                    if (isSelected) {
                      selectedItem = item;
                    }
                  });
                },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
    );
  }
}

class GridItem extends StatefulWidget {
  final GridItemModel item;
  final Function(bool) onSelected;

  const GridItem({required this.item, required this.onSelected});

  @override
  _GridItemState createState() => _GridItemState();
}
class _GridItemState extends State<GridItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.onSelected(isSelected);
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(4.0), // Adjusts the space between cells
        decoration: BoxDecoration(
          color: isSelected ? const Color.fromARGB(255, 241, 151, 151) : Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 230, 238, 239),
                border: Border.all(color: const Color.fromARGB(255, 62, 223, 207)),
               
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  widget.item.icon,
                  size: 30.0,
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Text(
                widget.item.text,
                overflow: TextOverflow.ellipsis, 
                style: const TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
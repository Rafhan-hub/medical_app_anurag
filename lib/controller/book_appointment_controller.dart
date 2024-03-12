import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app_anurag/model/department_model.dart';

class BookAppointmentController extends GetxController {

   final List<GridItemModel> gridItems = [
    GridItemModel(icon: Icons.kayaking, text: "General Medicine"),
    GridItemModel(icon: Icons.pregnant_woman, text: "Women's Health"),
    GridItemModel(icon: Icons.skip_previous, text: "Heart"),
    GridItemModel(icon: Icons.access_alarm, text: "Skin & Hair"),
    GridItemModel(icon: Icons.account_circle, text: "Kidney & Uniary Issues"),
    GridItemModel(icon: Icons.soup_kitchen_rounded, text: "Bones & Joint"),
    GridItemModel(icon: Icons.assessment, text: "Child Specialist"),
    GridItemModel(icon: Icons.child_care, text: "Ayurveda"),
    GridItemModel(icon: Icons.account_circle, text: "General Surgery"),
    GridItemModel(icon: Icons.remove_red_eye, text: "Eye Specialist"),
    GridItemModel(icon: Icons.dining, text: "Digestive Issues"),
    GridItemModel(icon: Icons.density_large, text: "Dental Care"),
  ];

}
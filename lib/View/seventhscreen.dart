import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:task_1/View/final_screen.dart';
import 'package:task_1/const/responsive/res.dart';
import 'package:task_1/controller/progressbarcontroller.dart';

class Progress8thScreen extends StatefulWidget {
  const Progress8thScreen({super.key});

  @override
  State<Progress8thScreen> createState() => _Progress8thScreenState();
}

class _Progress8thScreenState extends State<Progress8thScreen> {
  ProgressController progressController = Get.put(ProgressController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 9.0.hp,
          ),
          Text(
            "EASILY IN MINUTES",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24.0.sp),
          ),
          SizedBox(
            height: 4.0.hp,
          ),
          Text(
            "Create a business for your business",
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 4.0.hp,
          ),
          GestureDetector(
            onTap: () {
//                progressController.MobileNumber.text.length==0?
//               progressController.addressLine.text.length==0?
//               progressController.businesslogo.path.isEmpty  ?
//               progressController.city.text.length==0?
//               progressController.currentLocation==''?
//               progressController.description.text.length==0?
//               progressController.pincode.text.length==0?
//               progressController.webSitUrl.text.length==0?
//               progressController.email.text.length==0?
//               progressController.selectedImages.isEmpty
//             ?
// Fluttertoast.showToast(msg: "Sime Fields is Missing")
//             :

//             //  :

              Get.to(const FinalScreen());
              // Get.to(const FinalScreen());
            },
            child: Container(
              height: 5.0.hp,
              width: MediaQuery.of(context).size.width - 70.0.wp,
              decoration: BoxDecoration(
                  color: Colors.blue.shade800,
                  border: Border.all(color: Colors.blue.shade800, width: 1),
                  borderRadius: BorderRadius.circular(25.0.sp)),
              child: Text(
                "PUBLISH",
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600),
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(
            height: 2.0.hp,
          ),
        ],
      ),
    );
  }

  check() {}
}

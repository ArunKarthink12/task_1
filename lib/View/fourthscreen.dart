import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_1/View/secondscreen.dart';
import 'package:task_1/View/thirdScreen.dart';
import 'package:task_1/const/responsive/res.dart';
import 'package:task_1/controller/progressbarcontroller.dart';
import 'package:task_1/widgets/progressbar.dart';

import 'progress2.dart';
import 'progress_thirdScreen.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  ProgressController progressController = Get.put(ProgressController());
  List pages = [
    ProgressSecondScreen(),
    ProgressThirdScreen(),
    ProgressSecondScreen(),
    ProgressThirdScreen(),
    ProgressSecondScreen(),
    ProgressThirdScreen(),
    ProgressSecondScreen(),
    ProgressThirdScreen(),
    ProgressSecondScreen(),
  ];
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.white],
                begin: Alignment.topCenter,
                stops: [
                  0.1,
                  0.4,
                ],
                end: Alignment.bottomCenter)),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 7.0.hp,
              ),
              titleImage(),
              SizedBox(
                height: 4.0.hp,
              ),
              Container(
                child: Text(
                  " ${progressController.percentage.value} of 8 completed",
                  style: GoogleFonts.poppins(
                      fontSize: 10.0.sp,
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 1.0.hp,
              ),
              ProgressIndicatorWithIcon(),
              Expanded(
                child: PageView.builder(
                  itemCount: pages.length,
                  // controller: pageController,
                  onPageChanged: (value) {
                    progressController.percentage.value = value;
                    // progressController.logos[value] = value;
                    pageController.jumpToPage(value);
                    setState(() {});
                  },
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return pages[index];
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget titleImage() {
    return SizedBox(
      height: 21.0.hp,
      child: PageView.builder(
        itemCount: progressController.logos.length,
        controller: pageController,
        onPageChanged: (value) {
          progressController.percentage.value = value;
          setState(() {});
        },
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(
                progressController.logos[index],
              ),
              SizedBox(
                height: 5.0.hp,
              ),
              Text(
                "Business Profile",
                style: GoogleFonts.poppins(
                    fontSize: 18.0.sp,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.w800),
              )
            ],
          );
        },
      ),
    );
  }
}

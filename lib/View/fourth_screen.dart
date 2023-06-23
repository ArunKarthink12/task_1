import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_1/View/final_screen.dart';
import 'package:task_1/View/progress2.dart';
import 'package:task_1/View/seventhscreen.dart';
import 'package:task_1/const/responsive/res.dart';
import 'package:task_1/controller/progressbarcontroller.dart';
import 'package:task_1/widgets/progressbar.dart';

import 'fifthScreen.dart';
import 'progress_thirdScreen.dart';
import 'progressfifthscreen.dart';
import 'progressfourthscreen.dart';
import 'sixthscreen.dart';

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
    ProgressFourthScreen(),
    ProgressFifthScreen(),
    Progress6ThScreen(),
    Progress7thScreen(),
    Progress8thScreen(),
    // FinalScreen()
  ];
  @override
  void initState() {
    // TODO: implement initState
    progressController.businesslogo == File('');
    print(progressController.businesslogo.path);
    super.initState();
  }

  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // bottomNavigationBar: Container(
      //   color: Colors.white,
      //   height: 35.0.hp,
      //   child: BottomNavigationBar(items: [
      //     BottomNavigationBarItem(
      //         icon: SizedBox(
      //             height: 20.0.hp, child: Image.asset("image/bottomleft.png")),
      //         label: ""),
      //     BottomNavigationBarItem(
      //         icon: SizedBox(
      //           height: 28.0.hp,
      //         ),
      //         label: "Swipe"),
      //     BottomNavigationBarItem(
      //         icon: Image.asset("image/rightsidebottom.png"), label: ""),
      //   ]),
      // ),
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
              Container(
                // color: Colors.amber,
                height: 45.0.hp,
                child: PageView.builder(
                  itemCount: pages.length,
                  // controller: pageController,
                  onPageChanged: (value) {
                    progressController.percentage.value = value;
                    // progressController.logos[value] = value;
                    pageController.jumpToPage(value);
                    // progressController.percentage.value == 7
                    //     ? Get.to(FinalScreen())
                    //     : null;
                    setState(() {});
                  },
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return pages[index];
                  },
                ),
              ),
              Expanded(
                  child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        // color: Colors.amber,
                        height: 20.0.hp,
                        child: Image.asset("image/bottomleft.png")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Visibility(
                          visible: progressController.percentage.value == 0
                              ? false
                              : true,
                          child: SizedBox(
                              // height: 10.0.hp,
                              child: Image.asset("image/leftarrow.png")),
                        ),
                        Text(
                          "Swipe",
                          style: TextStyle(
                              color: Color(0xff8facdb), fontSize: 12.0.sp),
                        ),
                        Visibility(
                          visible: progressController.percentage.value == 8
                              ? false
                              : true,
                          child: SizedBox(
                              // height: 10.0.hp,
                              child: Image.asset("image/arrow.png")),
                        )
                      ],
                    ),
                    SizedBox(child: Image.asset("image/rightsidebottom.png")),
                  ],
                ),
              ))
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
                progressController.title[index],
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

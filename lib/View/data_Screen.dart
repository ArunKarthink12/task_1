import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:task_1/const/responsive/res.dart';
import 'package:task_1/controller/progressbarcontroller.dart';
import 'package:task_1/widgets/minibuttonmodel.dart';

class DataOfThis extends StatefulWidget {
  const DataOfThis({super.key});

  @override
  State<DataOfThis> createState() => _DataOfThisState();
}

class _DataOfThisState extends State<DataOfThis> {
  ProgressController progressController = Get.put(ProgressController());
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.white],
                begin: Alignment.topCenter,
                stops: [
                  0.1,
                  0.4,
                ],
                end: Alignment.bottomCenter)),
        child: SizedBox(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.0.hp,
                    ),
                    Image.asset("image/lastscreen.png"),
                    SizedBox(
                      height: 2.0.hp,
                    ),
                    Text("UserName = ${progressController.userName.text}"),
                    Text("Email = ${progressController.email.text}"),
                    Text("Password = ${progressController.passWord.text}"),
                    Text(
                        "Description = ${progressController.description.text}"),
                    Text("WebSiteUrl = ${progressController.webSitUrl.text}"),
                    Text("city = ${progressController.city.text}"),
                    Text("pincode = ${progressController.pincode.text}"),
                    Text(
                        "addressLine = ${progressController.addressLine.text}"),
                    Text(
                        "mobileNumber = ${progressController.MobileNumber.text}"),
                    Text("Business logo"),
                    SizedBox(
                      height: 10.0.hp,
                      width: 10.0.wp,
                      child: Image.file(progressController.businesslogo),
                    ),
                    Text("MultiImage"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              progressController.selectedImages.length > 1
                                  ? buttonCarouselController.previousPage()
                                  : Fluttertoast.showToast(
                                      msg:
                                          "Add More then 1 to Active the Function");
                              setState(() {});
                            },
                            icon: Icon(Icons.arrow_back_ios)),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 200,
                            height: 200,
                            color: Colors.grey,
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                GestureDetector(
                                  // onTap: () {
                                  //   Future.delayed(Duration.zero, () async {
                                  //     await profilefilepicker();
                                  //   });
                                  // },
                                  child: Center(
                                    child: progressController
                                            .selectedImages.isEmpty
                                        ? Text(
                                            'Image',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          )
                                        : SizedBox(
                                            width: 200,
                                            height: 200,
                                            child: CarouselSlider(
                                              items: progressController
                                                  .selectedImages
                                                  .map((i) {
                                                return Builder(
                                                  builder:
                                                      (BuildContext context) {
                                                    return Container(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    5.0),
                                                        // decoration: BoxDecoration(
                                                        //     color: Colors.amber),
                                                        child: Image.file(
                                                          File(i.path
                                                              .toString()),
                                                          // style:
                                                          //     TextStyle(fontSize: 16.0),
                                                        ));
                                                  },
                                                );
                                              }).toList(),
                                              carouselController:
                                                  buttonCarouselController,
                                              options: CarouselOptions(
                                                autoPlay: false,
                                                enlargeCenterPage: true,
                                                viewportFraction: 0.9,
                                                aspectRatio: 1,
                                                initialPage: 2,
                                              ),
                                            ),
                                          ),
                                    //     File(progressController.ibusinesslogo.path)),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    // _removeImage();
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              progressController.selectedImages.length > 1
                                  ? buttonCarouselController.nextPage()
                                  : Fluttertoast.showToast(
                                      msg:
                                          "Add More then 1 to Active the Function");

                              setState(() {});
                            },
                            icon: Icon(Icons.arrow_forward_ios_outlined)),
                      ],
                    ),
                    Text("Current Location"),
                    Text(progressController.currentLocation.toString()),
                    MiniButtonModel(
                      bgColors: Colors.blueAccent,
                      borderColor: Colors.blueAccent,
                      borderRaduis: 20.0.sp,
                      borderWidth: 2,
                      height: 5.0.hp,
                      width: 20.0.wp,
                      title: "Go Back To LogIn",
                    ),
                  ],
                ))),
      ),
    );
  }
}

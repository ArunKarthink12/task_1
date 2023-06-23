import 'package:flutter/material.dart';
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

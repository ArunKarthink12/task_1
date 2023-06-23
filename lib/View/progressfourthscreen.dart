import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:task_1/const/responsive/res.dart';
import 'package:task_1/controller/progressbarcontroller.dart';
import 'package:task_1/widgets/titlecontent.dart';

class ProgressFourthScreen extends StatefulWidget {
  const ProgressFourthScreen({super.key});

  @override
  State<ProgressFourthScreen> createState() => _ProgressFourthScreenState();
}

class _ProgressFourthScreenState extends State<ProgressFourthScreen> {
  ProgressController progressController = Get.put(ProgressController());

  @override
  void initState() {
    // TODO: implement initState
    // progressController.percentage.value == 2?
    progressController.currentLocation = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 2.0.hp,
              ),
              MainTitleContent(
                title: "PIN YOUR BUSINESS LOCATION",
              ),
              SizedBox(
                height: 2.0.hp,
              ),
              Text(
                "Add Map Location\nFor Your Business",
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 2.0.hp,
              ),
              GestureDetector(
                onTap: () async {
                  bool serviceEnabled;
                  LocationPermission permission;

                  serviceEnabled = await Geolocator.isLocationServiceEnabled();

                  await Geolocator.requestPermission();
                  Position position = await Geolocator.getCurrentPosition(
                      forceAndroidLocationManager: false,
                      desiredAccuracy: LocationAccuracy.best);
                  debugPrint('location: ${position.latitude}');
                  List<Placemark> addresses = await placemarkFromCoordinates(
                      position.latitude, position.longitude);
                  progressController.currentLocation = addresses.first;
                  Fluttertoast.showToast(
                      msg: progressController.currentLocation.toString());
                  // progressController.update();
                  setState(() {});
                },
                child: Container(
                  // color: Colors. ,

                  height: 30.0.hp,
                  width: 60.0.wp,
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: progressController.currentLocation == ""
                        ? Image.asset(
                            "image/googlemap.png",
                            fit: BoxFit.cover,
                          )
                        : Text(progressController.currentLocation.toString()),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

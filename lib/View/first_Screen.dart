import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_1/const/responsive/res.dart';

import 'second_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "image/crop1st.png",
                fit: BoxFit.cover,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  // Get.toNamed('/1stScreen');
                  Get.to(const SecondScreen());
                },
                child: Container(
                  height: 6.5.hp,
                  width: MediaQuery.of(context).size.width - 20.0.wp,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.blue.shade500, Colors.white]),
                      // color: Colors.blue,
                      borderRadius: BorderRadius.circular(30.0.sp)),
                  child: Text(
                    "Get Started Now",
                    style: TextStyle(color: Colors.white, fontSize: 18.0.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 3.0.hp,
              )
            ],
          ),
        ],
      ),
    ));
  }
}

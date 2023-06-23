// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:task_1/const/colors/colorsconfig.dart';
import 'package:task_1/const/responsive/res.dart';
import 'package:task_1/widgets/minibuttonmodel.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({super.key});

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: StatefulBuilder(
        // stream: null,
        builder: (context, snapshot) {
      return Container(
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
        child: Column(
          children: [
            SizedBox(
              height: 30.0.hp,
            ),
            Image.asset("image/lastscreen.png"),
            SizedBox(
              height: 5.0.hp,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'CONGRATS! \n',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: 'YOU COMPLETED THE PROCESS\n\n',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: 'Your business website URL.',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 7.0.sp,
                          fontWeight: FontWeight.w500)),
                  TextSpan(
                      text: ' https://pub.dev/packages/geocoding/',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 7.0.sp,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            SizedBox(
              height: 3.0.hp,
            ),
            MiniButtonModel(
              bgColors: backgroundclr,
              borderColor: backgroundclr,
              borderRaduis: 20.0.sp,
              borderWidth: 1,
              height: 3.0.hp,
              width: 20.0.wp,
              title: "DashBoard",
            ),
            SizedBox(
              height: 3.0.hp,
            ),
            MiniButtonModel(
              bgColors: Colors.blueAccent,
              borderColor: Colors.blueAccent,
              borderRaduis: 20.0.sp,
              borderWidth: 1,
              height: 3.0.hp,
              width: 20.0.wp,
              title: "Website",
            )
          ],
        ),
      );
    }));
  }
}

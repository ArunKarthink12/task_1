// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_1/const/responsive/res.dart';
import 'package:task_1/widgets/titlecontent.dart';

class ProgressFourthScreen extends StatefulWidget {
  const ProgressFourthScreen({super.key});

  @override
  State<ProgressFourthScreen> createState() => _ProgressFourthScreenState();
}

class _ProgressFourthScreenState extends State<ProgressFourthScreen> {
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
              Container(
                color: Colors.amber,
                height: 30.0.hp,
                width: 60.0.wp,
              )
            ],
          ),
        ));
  }
}

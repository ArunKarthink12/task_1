import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_1/const/responsive/res.dart';
import 'package:task_1/widgets/titlecontent.dart';

class ProgressFifthScreen extends StatefulWidget {
  const ProgressFifthScreen({super.key});

  @override
  State<ProgressFifthScreen> createState() => _ProgressFifthScreenState();
}

class _ProgressFifthScreenState extends State<ProgressFifthScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 5.0.hp,
            ),
            MainTitleContent(
              title: " PIN YOUR BUSINESS LOCATION ",
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            Text(
              "Provide an overview of the \n business. This description provides\n extensive details outlining the business",
              style: TextStyle(fontWeight: FontWeight.w400),
              maxLines: 3,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            fields(15.0.hp,
                "Enter your business overview for about \npage description"),
            SizedBox(
              height: 2.0.hp,
            ),
            fields(8.0.hp, "Email"),
            SizedBox(
              height: 2.0.hp,
            ),
            fields(8.0.hp, "Existing Website URL(Optional)"),
          ],
        ),
      ),
    );
  }

  Widget fields(height, title) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width - 25.0.wp,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff6198f2), width: 1),
          borderRadius: BorderRadius.circular(10.0.sp)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          maxLines: 2,
          style: TextStyle(fontSize: 8.0.sp, color: Colors.grey),
        ),
      ),
      alignment: Alignment.topLeft,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task_1/const/responsive/res.dart';
import 'package:task_1/widgets/buttons.dart';

import '../widgets/titlecontent.dart';

const List<String> list = <String>['Choose', 'SoftWare Developer', 'B2C', 'IT'];
const List<String> list1 = <String>['State', 'TamilNadu', 'xxxxx', 'xxxxx'];

class ProgressThirdScreen extends StatefulWidget {
  const ProgressThirdScreen({super.key});

  @override
  State<ProgressThirdScreen> createState() => _ProgressThirdScreenState();
}

class _ProgressThirdScreenState extends State<ProgressThirdScreen> {
  String dropdownValue = list.first;
  String dropdownValue1 = list1.first;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        // height: 30.0.hp,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 2.0.hp,
            ),
            MainTitleContent(
              title: "ADD BUSINESS LOCATION",
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            ProgressBarButtons(
                customizedWidget: DropdownButton<String>(
              value: dropdownValue,
              isExpanded: false,
              alignment: Alignment.center,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 2,
              style: const TextStyle(color: Colors.grey),
              underline: Container(
                height: 2,
                color: Colors.transparent,
              ),
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )),
            SizedBox(
              height: 2.0.hp,
            ),
            ProgressBarButtons(
                customizedWidget: DropdownButton<String>(
              value: dropdownValue1,
              isExpanded: false,
              alignment: Alignment.center,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 2,
              style: const TextStyle(color: Colors.grey),
              underline: Container(
                height: 2,
                color: Colors.transparent,
              ),
              onChanged: (String? value) {
                setState(() {
                  dropdownValue1 = value!;
                });
              },
              items: list1.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )),
            SizedBox(
              height: 2.0.hp,
            ),
            ProgressBarButtons(
                customizedWidget: Text(
              "City",
              style: const TextStyle(color: Colors.grey),
            )),
            SizedBox(
              height: 2.0.hp,
            ),
            ProgressBarButtons(
                customizedWidget: Text(
              "Pincode",
              style: const TextStyle(color: Colors.grey),
            )),
            SizedBox(
              height: 2.0.hp,
            ),
            ProgressBarButtons(
                customizedWidget: Text(
              "Address Line",
              style: const TextStyle(color: Colors.grey),
            )),
            SizedBox(
              height: 2.0.hp,
            ),
            ProgressBarButtons(
                customizedWidget: Text(
              "Mobile Number",
              style: const TextStyle(color: Colors.grey),
            )),
          ],
        ),
      ),
    );
  }
}

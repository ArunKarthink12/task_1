import 'package:flutter/material.dart';
import 'package:task_1/const/responsive/res.dart';
import 'package:task_1/widgets/buttons.dart';
import 'package:task_1/widgets/titlecontent.dart';

const List<String> list = <String>['Choose', 'SoftWare Developer', 'B2C', 'IT'];

class ProgressSecondScreen extends StatefulWidget {
  const ProgressSecondScreen({super.key});

  @override
  State<ProgressSecondScreen> createState() => _ProgressSecondScreenState();
}

class _ProgressSecondScreenState extends State<ProgressSecondScreen> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 9.0.hp,
          ),
          MainTitleContent(
            title: "CREATE BUSINESS PROFILE",
          ),
          SizedBox(
            height: 4.0.hp,
          ),
          Text(
            "Start Building Your \nBusiness Profile",
            style: TextStyle(fontWeight: FontWeight.w500),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 4.0.hp,
          ),
          ProgressBarButtons(
              customizedWidget: Text(
            "Business Name",
            style: const TextStyle(color: Colors.grey),
          )),
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
        ],
      ),
    );
  }
}

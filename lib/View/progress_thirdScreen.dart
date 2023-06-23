import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_1/const/responsive/res.dart';
import 'package:task_1/controller/progressbarcontroller.dart';
import 'package:task_1/widgets/buttons.dart';
import 'package:task_1/widgets/titlecontent.dart';

const List<String> list = <String>['Choose', 'SoftWare Developer', 'B2C', 'IT'];
const List<String> list1 = <String>['State', 'TamilNadu', 'Goa', 'PuD'];

class ProgressThirdScreen extends StatefulWidget {
  const ProgressThirdScreen({super.key});

  @override
  State<ProgressThirdScreen> createState() => _ProgressThirdScreenState();
}

class _ProgressThirdScreenState extends State<ProgressThirdScreen> {
  String dropdownValue = list.first;
  String dropdownValue1 = list1.first;
  ProgressController progressController = Get.put(ProgressController());
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
              customizedWidget: TextFormField(
                textAlign: TextAlign.center,
                controller: progressController.city,
                // obscureText: _isPinnewHidden,
                style: GoogleFonts.jost(
                    textStyle: TextStyle(
                        fontSize: 10.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
                decoration: InputDecoration(
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0.sp),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 1)),
                  // borderSide:
                  //     const BorderSide(color: Colors.red, width: 1)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0.sp),
                    borderSide:
                        const BorderSide(color: Colors.transparent, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0.sp),
                    borderSide: BorderSide(color: Colors.transparent, width: 1),
                  ),
                  fillColor: const Color(0xffC6C6C6),
                  hintText: "City",
                  contentPadding: EdgeInsets.only(top: 3.0.wp),
                  hintStyle: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 10.0.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500)),
                  border: const OutlineInputBorder(
                    gapPadding: 4.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            ProgressBarButtons(
              customizedWidget: TextFormField(
                textAlign: TextAlign.center,
                controller: progressController.pincode,
                // obscureText: _isPinnewHidden,
                style: GoogleFonts.jost(
                    textStyle: TextStyle(
                        fontSize: 10.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
                decoration: InputDecoration(
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0.sp),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 1)),
                  // borderSide:
                  //     const BorderSide(color: Colors.red, width: 1)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0.sp),
                    borderSide:
                        const BorderSide(color: Colors.transparent, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0.sp),
                    borderSide: BorderSide(color: Colors.transparent, width: 1),
                  ),
                  fillColor: const Color(0xffC6C6C6),
                  hintText: "Pincode",
                  contentPadding: EdgeInsets.only(top: 3.0.wp),
                  hintStyle: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 10.0.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500)),
                  border: const OutlineInputBorder(
                    gapPadding: 4.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            ProgressBarButtons(
              customizedWidget: TextFormField(
                textAlign: TextAlign.center,
                controller: progressController.addressLine,
                // obscureText: _isPinnewHidden,
                style: GoogleFonts.jost(
                    textStyle: TextStyle(
                        fontSize: 10.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
                decoration: InputDecoration(
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0.sp),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 1)),
                  // borderSide:
                  //     const BorderSide(color: Colors.red, width: 1)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0.sp),
                    borderSide:
                        const BorderSide(color: Colors.transparent, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0.sp),
                    borderSide: BorderSide(color: Colors.transparent, width: 1),
                  ),
                  fillColor: const Color(0xffC6C6C6),
                  hintText: "Address Line",
                  contentPadding: EdgeInsets.only(top: 3.0.wp),
                  hintStyle: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 10.0.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500)),
                  border: const OutlineInputBorder(
                    gapPadding: 4.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            ProgressBarButtons(
              customizedWidget: TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(
                      r'^[-]{0,1}[0-9]*[,]?[0-9]*', //signed regex
                      // r'^[0-9]*[,]?[0-9]*',
                    ),
                  ),
                ],
                // validator: (v) {
                //   String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                //   RegExp regExp = new RegExp(patttern);
                //   if (v!.isEmpty) {
                //     return 'Please enter mobile number';
                //   } else if (!regExp.hasMatch(v)) {
                //     return 'Please enter valid mobile number';
                //   }
                //   return null;
                // },
                textAlign: TextAlign.center,
                controller: progressController.MobileNumber,
                keyboardType: TextInputType.number,
                style: GoogleFonts.jost(
                    textStyle: TextStyle(
                        fontSize: 10.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
                decoration: InputDecoration(
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0.sp),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 1)),
                  // borderSide:
                  //     const BorderSide(color: Colors.red, width: 1)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0.sp),
                    borderSide:
                        const BorderSide(color: Colors.transparent, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0.sp),
                    borderSide: BorderSide(color: Colors.transparent, width: 1),
                  ),
                  fillColor: const Color(0xffC6C6C6),
                  hintText: "Mobile Number",
                  contentPadding: EdgeInsets.only(top: 3.0.wp),
                  hintStyle: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 10.0.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500)),
                  border: const OutlineInputBorder(
                    gapPadding: 4.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_1/const/responsive/res.dart';
import 'package:task_1/controller/progressbarcontroller.dart';
import 'package:task_1/widgets/titlecontent.dart';

class ProgressFifthScreen extends StatefulWidget {
  const ProgressFifthScreen({super.key});

  @override
  State<ProgressFifthScreen> createState() => _ProgressFifthScreenState();
}

class _ProgressFifthScreenState extends State<ProgressFifthScreen> {
  ProgressController progressController = Get.put(ProgressController());
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
            fields(
                15.0.hp,
                "Enter your business overview for about \npage description",
                progressController.description),
            SizedBox(
              height: 2.0.hp,
            ),
            fields(8.0.hp, "Email", progressController.email
                //  progressController.descriptionMail
                ),
            SizedBox(
              height: 2.0.hp,
            ),
            fields(8.0.hp, "Existing Website URL(Optional)",
                progressController.webSitUrl),
          ],
        ),
      ),
    );
  }

  Widget fields(height, title, controller) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width - 25.0.wp,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff6198f2), width: 1),
          borderRadius: BorderRadius.circular(10.0.sp)),
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller,
          // obscureText: _isPinnewHidden,
          style: GoogleFonts.jost(
              textStyle: TextStyle(
                  fontSize: 10.0.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500)),
          decoration: InputDecoration(
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0.sp),
                borderSide: const BorderSide(color: Colors.red, width: 1)),
            // borderSide:
            //     const BorderSide(color: Colors.red, width: 1)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0.sp),
              borderSide: const BorderSide(color: Colors.transparent, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0.sp),
              borderSide: BorderSide(color: Colors.transparent, width: 1),
            ),
            fillColor: const Color(0xffC6C6C6),
            hintText: title,
            contentPadding: const EdgeInsets.only(left: 10),
            hintStyle: GoogleFonts.jost(
                textStyle: TextStyle(
                    fontSize: 10.0.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500)),
            border: const OutlineInputBorder(
              gapPadding: 4.0,
            ),
            // suffixIcon: InkWell(
            //   onTap: () {
            //     // _togglecnewPinView();
            //   },
            //   child: Padding(
            //     padding:
            //         const EdgeInsets.only(top: 15, left: 3, bottom: 15),
            //     // child: Icon(
            //     //   _isPinnewHidden
            //     //       ? Icons.visibility
            //     //       : Icons.visibility_off,
            //     //   size: MediaQuery.of(context).size.height * 0.025,
            //     //   color: const Color(0xffC6C6C6),
            //     // ),
            //   ),
            // ),
          ),
        ),
        //  Text(
        //   title,
        //   maxLines: 2,
        //   style: TextStyle(fontSize: 8.0.sp, color: Colors.grey),
        // ),
      ),
    );
  }
}

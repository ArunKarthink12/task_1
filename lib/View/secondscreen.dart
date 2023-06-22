import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_1/const/responsive/res.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: SizedBox(
          child: Column(
            children: [
              Container(
                height: 45.0.hp,
                child: Container(
                    height: 30.0.hp,
                    alignment: Alignment.center,
                    child: Image.asset(
                      "image/2ndscreen.png",
                      fit: BoxFit.cover,
                    )),
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35.0.sp),
                        topRight: Radius.circular(35.0.sp))),
                child: Content(),
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget Content() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.all(20.0.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "SignIn",
                  style: GoogleFonts.poppins(
                      fontSize: 18.0.sp,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w800),
                )),
            SizedBox(
              height: 2.0.hp,
            ),
            Container(
              width: 84.0.wp,
              color: const Color(0xffD9D9D9).withOpacity(0.1),
              child: TextFormField(
                keyboardType: TextInputType.number,
                style: GoogleFonts.jost(
                    textStyle: TextStyle(
                        fontSize: 10.0.sp,
                        color: Colors.amber,
                        fontWeight: FontWeight.w500)),
                decoration: InputDecoration(
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0.sp),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 1)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0.sp),
                      borderSide: BorderSide(
                          color: const Color(0xffC6C6C6).withOpacity(0.5),
                          width: 1),
                    ),
                    fillColor: const Color(0xffC6C6C6),
                    hintText: 'User Name',
                    contentPadding: const EdgeInsets.only(left: 10),
                    hintStyle: GoogleFonts.jost(
                        textStyle: TextStyle(
                            fontSize: 10.0.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500)),
                    border: const OutlineInputBorder(
                      gapPadding: 4.0,
                    )),
              ),
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            Container(
              width: 84.0.wp,
              color: const Color(0xffD9D9D9).withOpacity(0.1),
              child: TextFormField(
                keyboardType: TextInputType.number,
                style: GoogleFonts.jost(
                    textStyle: TextStyle(
                        fontSize: 10.0.sp,
                        color: Colors.amber,
                        fontWeight: FontWeight.w500)),
                decoration: InputDecoration(
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0.sp),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 1)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0.sp),
                      borderSide: BorderSide(
                          color: const Color(0xffC6C6C6).withOpacity(0.5),
                          width: 1),
                    ),
                    fillColor: const Color(0xffC6C6C6),
                    hintText: 'Password',
                    contentPadding: const EdgeInsets.only(left: 10),
                    hintStyle: GoogleFonts.jost(
                        textStyle: TextStyle(
                            fontSize: 10.0.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500)),
                    border: const OutlineInputBorder(
                      gapPadding: 4.0,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

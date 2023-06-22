import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_1/const/responsive/res.dart';

import 'fourthscreen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  bool _isPinnewHidden = true;

  void _togglecnewPinView() {
    setState(() {
      _isPinnewHidden = !_isPinnewHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: SizedBox(
            child: Column(children: [
          Container(
            height: 35.0.hp,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35.0.sp),
                      bottomRight: Radius.circular(35.0.sp)),
                  image: DecorationImage(
                      image: AssetImage("image/3rdscreen.png"))),
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: Content(),
          )
        ])),
      ),
    );
  }

  Widget DontHaveAccount() {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const SignupScreen()),
        // );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account? ',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 12.00.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w500)),
          ),
          GestureDetector(
            onTap: () {
              // Get.toNamed('/1stScreen');
              Get.to(const FourthScreen());
            },
            child: Container(
              // height: 5.8.hp,
              width: 20.0.wp,
              // MediaQuery.of(context).size.width - 20.0.wp,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //     begin: Alignment.topCenter,
                  //     end: Alignment.bottomCenter,
                  //     colors: [Colors.blue.shade500, Colors.white]),
                  // color: Colors.blue,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0.sp)),
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 12.0.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buttons() {
    return GestureDetector(
      onTap: () {
        // Get.toNamed('/1stScreen');
        // Get.to(const SecondScreen());
      },
      child: Container(
        height: 5.8.hp,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            // gradient: LinearGradient(
            //     begin: Alignment.topCenter,
            //     end: Alignment.bottomCenter,
            //     colors: [Colors.blue.shade500, Colors.white]),
            // color: Colors.blue,
            color: Colors.blue.shade300,
            borderRadius: BorderRadius.circular(10.0.sp)),
        child: Text(
          "CREATE ACCOUNT",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.0.sp,
              fontWeight: FontWeight.w700),
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
                  "Sign Up",
                  style: GoogleFonts.poppins(
                      fontSize: 18.0.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                )),
            SizedBox(
              height: 2.0.hp,
            ),
            Container(
              width: 84.0.wp,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0.sp),
              ),
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
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0.sp),
              ),
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
                    hintText: 'Email ID',
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
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0.sp),
              ),
              width: 84.0.wp,
              child: TextFormField(
                obscureText: _isPinnewHidden,
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
                    borderSide: const BorderSide(color: Colors.black, width: 1),
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
                  ),
                  suffixIcon: InkWell(
                    onTap: () {
                      _togglecnewPinView();
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 3, bottom: 15),
                      child: Icon(
                        _isPinnewHidden
                            ? Icons.visibility
                            : Icons.visibility_off,
                        size: MediaQuery.of(context).size.height * 0.025,
                        color: const Color(0xffC6C6C6),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // forgotPassword(),
            SizedBox(
              height: 1.5.hp,
            ),
            buttons(),
            SizedBox(height: 1.3.hp),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Divider(
                  color: Colors.white,
                  // endIndent: 30.0.sp,
                  // thickness: 4,
                ),
                Container(
                  // width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Text(
                    'Or',
                    style: GoogleFonts.inter(
                        // letterSpacing: 0.2,
                        fontSize: 10.0.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Divider(
                  // thickness: 4,
                  color: Colors.white,
                  // endIndent: 30.0.sp,
                ),
              ],
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Text(
                'Sign Up with',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 2.0.wp,
              ),
              logInType('image/google.png'),
              SizedBox(
                width: 0.5.wp,
              ),
              logInType('image/facebook.png'),
              SizedBox(
                width: 0.5.wp,
              ),
              logInType('image/indeed.png'),
              SizedBox(
                width: 0.5.wp,
              ),
              logInType('image/twitter.png'),
            ]),
            SizedBox(
              height: 1.0.hp,
            ),

            DontHaveAccount()
          ],
        ),
      ),
    );
  }

  Widget logInType(image) {
    return Container(
      height: 10.5.hp,
      width: 10.5.wp,
      child: Image.asset(image),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
    );
  }
}

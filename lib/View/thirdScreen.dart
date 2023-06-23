import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_1/const/responsive/res.dart';
import 'package:task_1/const/storage/dB_1.dart';
import 'package:task_1/controller/progressbarcontroller.dart';

import 'fourth_screen.dart';
import 'second_screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  bool _isPinnewHidden = true;
  ProgressController progressController = Get.put(ProgressController());
  void _togglecnewPinView() {
    setState(() {
      _isPinnewHidden = !_isPinnewHidden;
    });
  }

  @override
  void initState() {
    super.initState();
    progressController.userName.text = '';
    progressController.email.text = '';
    progressController.passWord.text = '';
    // _focusNode.addListener(_onFocusChange);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          // Expanded(
          // child:
          Content(),
          // )
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
              Get.to(const SecondScreen());
              // Get.toNamed('/1stScreen');
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

  bool isEmailValid() {
    // Regular expression pattern for email validation
    final RegExp emailRegex = RegExp(
      r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$',
    );

    // Check if the email matches the regex pattern
    return emailRegex.hasMatch(progressController.email.text);
  }

  // String email = 'example@example.com';
  Widget buttons() {
    return GestureDetector(
      onTap: () async {
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        if (progressController.userName.text.isEmpty &&
            progressController.email.text.isEmpty &&
            progressController.passWord.text.isEmpty) {
          Fluttertoast.showToast(msg: "Fill All Fields");
        } else if (progressController.userName.text.isEmpty) {
          Fluttertoast.showToast(msg: "Username Fields is missing");
        } else if (progressController.email.text.isEmpty) {
          Fluttertoast.showToast(msg: "Email Fields is missing");
        } else if (progressController.passWord.text.isEmpty) {
          Fluttertoast.showToast(msg: "password Required ");
        } else if (progressController.passWord.text.length < 6 ||
            progressController.passWord.text.length > 6) {
          Fluttertoast.showToast(msg: "Password Should be 6 Digits");
        } else if (isEmailValid()) {
          Get.to(const FourthScreen());
          // await sharedPreferences.setString(
          //     Constants.email, progressController.email.text);
          // await sharedPreferences.setString(
          //     Constants.password, progressController.passWord.text);
        } else {
          Fluttertoast.showToast(msg: " Enter the valied Email ");
        }
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
            color: Colors.blueAccent.shade700,
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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        // height: 60.9.hp,
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
                  controller: progressController.userName,
                  // keyboardType: TextInputType.number,
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
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1),
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
                  // keyboardType: TextInputType.number,
                  controller: progressController.email,
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: 10.0.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                  decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0.sp),
                      ),
                      // borderSide:
                      //     const BorderSide(color: Colors.red, width: 1)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0.sp),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1),
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
                  // focusNode: _focusNode,
                  controller: progressController.passWord,
                  obscureText: _isPinnewHidden,
                  textInputAction: TextInputAction.done,
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

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_1/const/responsive/res.dart';
import 'package:task_1/const/storage/dB_1.dart';
import 'package:task_1/controller/progressbarcontroller.dart';

import 'thirdScreen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool _isPinnewHidden = true;

  void _togglecnewPinView() {
    setState(() {
      _isPinnewHidden = !_isPinnewHidden;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    // storage();
    clear();
    super.initState();
  }

  clear() {
    progressController.loginuserName.text = '';
    progressController.logInPasWord.text = '';
  }

  bool select = true;
  ProgressController progressController = Get.put(ProgressController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: SizedBox(
          child: Column(
            children: [
              Container(
                height: 30.0.hp,
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
                controller: progressController.loginuserName,
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
              color: const Color(0xffD9D9D9).withOpacity(0.1),
              width: 84.0.wp,
              child: TextFormField(
                controller: progressController.logInPasWord,
                obscureText: _isPinnewHidden,
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
            forgotPassword(),
            buttons(),
            SizedBox(height: 2.0.hp),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text(
                'Or',
                style: GoogleFonts.inter(
                    // letterSpacing: 0.2,
                    fontSize: 10.0.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: .5.hp),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Text(
                'Login Using',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 2.0.wp,
              ),
              CircleAvatar(
                  radius: 10.0.sp,
                  backgroundColor: Colors.white,
                  // backgroundColor: screenbackground,
                  child: Image.asset('image/google.png')),
              SizedBox(
                width: 0.5.wp,
              ),
              CircleAvatar(
                  radius: 10.0.sp,
                  backgroundColor: Colors.white,
                  // backgroundColor: screenbackground,
                  child: Image.asset('image/facebook.png')),
              SizedBox(
                width: 0.5.wp,
              ),
              CircleAvatar(
                  radius: 10.0.sp,
                  backgroundColor: Colors.white,
                  // backgroundColor: screenbackground,
                  child: Image.asset('image/indeed.png')),
              SizedBox(
                width: 0.5.wp,
              ),
              CircleAvatar(
                  radius: 10.0.sp,
                  backgroundColor: Colors.white,
                  // screenbackground,
                  child: Image.asset('image/twitter.png')),
            ]),
            SizedBox(
              height: 2.0.hp,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text(
                'Or',
                style: GoogleFonts.inter(
                    // letterSpacing: 0.2,
                    fontSize: 10.0.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            otp(),
            SizedBox(
              height: 2.0.hp,
            ),
            DontHaveAccount()
          ],
        ),
      ),
    );
  }

  Widget buttons() {
    return GestureDetector(
      onTap: () {
        if (progressController.loginuserName.text.isEmpty) {
          Fluttertoast.showToast(msg: "Enter Username");
        } else if (progressController.logInPasWord.text.isEmpty) {
          Fluttertoast.showToast(msg: "Enter Password");
        } else if (progressController.logInPasWord.text.length < 6) {
          Fluttertoast.showToast(msg: "Password length Should 6 ");
        } else if (progressController.userName.text ==
                progressController.loginuserName.text &&
            progressController.passWord.text ==
                progressController.logInPasWord.text) {
          Fluttertoast.showToast(msg: "LogIn SuccessFully");
        } else {
          Fluttertoast.showToast(msg: "UnAuth LogIn ");
        }
      },
      child: Container(
        height: 5.8.hp,
        width: MediaQuery.of(context).size.width - 20.0.wp,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            // gradient: LinearGradient(
            //     begin: Alignment.topCenter,
            //     end: Alignment.bottomCenter,
            //     colors: [Colors.blue.shade500, Colors.white]),
            // color: Colors.blue,
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10.0.sp)),
        child: Text(
          "Submit",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.0.sp,
              fontWeight: FontWeight.w700),
        ),
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
            'Don’t have an account? ',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 12.00.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500)),
          ),
          GestureDetector(
            onTap: () {
              // Get.toNamed('/1stScreen');
              Get.to(const ThirdScreen());
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
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10.0.sp)),
              child: Text(
                "SignUp",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget otp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 50.0.wp,
          color: const Color(0xffD9D9D9).withOpacity(0.1),
          child: TextFormField(
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
                    borderSide: const BorderSide(color: Colors.red, width: 1)),
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
                hintText: 'Mobile Number',
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
        GestureDetector(
          onTap: () {
            // Get.toNamed('/1stScreen');
            // Get.to(const SecondScreen());
            if (progressController.MobileNumber.text.isEmpty) {
              Fluttertoast.showToast(msg: "Enter MobileNumber");
            } else if (progressController.MobileNumber.text.length < 10 ||
                progressController.MobileNumber.text.length > 10) {
              Fluttertoast.showToast(
                  msg: "MobileNumber should be in 10 Digits");
            } else {
              Fluttertoast.showToast(
                  msg: "Otp Send To Your Register Mobile Number");
            }
          },
          child: Container(
            height: 5.0.hp,
            width: 30.0.wp,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                // gradient: LinearGradient(
                //     begin: Alignment.topCenter,
                //     end: Alignment.bottomCenter,
                //     colors: [Colors.blue.shade500, Colors.white]),
                // color: Colors.blue,
                color: Colors.blueAccent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30.0.sp)),
            child: Text(
              "Request OTP",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }

  Widget forgotPassword() {
    return Container(
      child: Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 6.0.hp,
                width: 5.0.wp,
                child: Checkbox(
                  side: BorderSide(width: 2, color: Colors.white),
                  checkColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  activeColor: Colors.blueAccent,
                  value: this.select,
                  onChanged: (value) {
                    setState(() {
                      this.select = value!;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 4.0.wp,
              ),
              Text(
                'Remember Me',
                style: TextStyle(
                  color: Colors.blueAccent,
                ),
              )
            ],
          ),
          Expanded(child: SizedBox()),
          Padding(
            padding: EdgeInsets.only(right: 5.0.wp),
            child: InkWell(
              onTap: () {},
              child: Text(
                'Forget Password?',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 10.00.sp,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w400)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

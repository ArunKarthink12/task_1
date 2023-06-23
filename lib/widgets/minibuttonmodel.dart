// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:task_1/const/responsive/res.dart';

import '../controller/progressbarcontroller.dart';

class MiniButtonModel extends StatefulWidget {
  var height;
  var width;

  var borderColor;

  var borderWidth;

  var borderRaduis;

  var bgColors;

  String? title;

  MiniButtonModel(
      {super.key,
      this.bgColors,
      this.borderColor,
      this.borderRaduis,
      this.borderWidth,
      this.height,
      this.title,
      this.width});

  @override
  State<MiniButtonModel> createState() => _MiniButtonModelState();
}

class _MiniButtonModelState extends State<MiniButtonModel> {
  ProgressController progressController = Get.put(ProgressController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Future.delayed(Duration.zero, () async {
          await progressController.profilefilepicker();
        });
      },
      child: Container(
          height: 5.0.hp,
          width: 40.0.wp,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: widget.borderColor,
              width: 2,
            ),
            color: widget.bgColors,
            borderRadius: BorderRadius.all(Radius.circular(20.0.sp)),
          ),
          child: Text(
            widget.title.toString(),
            style: TextStyle(
              color: Colors.white,
            ),
          )),
    );
  }
}

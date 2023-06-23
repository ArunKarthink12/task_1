import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:task_1/const/responsive/res.dart';

import '../controller/progressbarcontroller.dart';

class ProgressIndicatorWithIcon extends StatefulWidget {
  // var percentage;
  ProgressIndicatorWithIcon({
    super.key,
    // this.percentage
  });

  @override
  State<ProgressIndicatorWithIcon> createState() =>
      _ProgressIndicatorWithIconState();
}

class _ProgressIndicatorWithIconState extends State<ProgressIndicatorWithIcon> {
  ProgressController progressController = Get.put(ProgressController());

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: 85.0.wp,
      lineHeight: 10,
      percent: progressController.percentage.value == 0
          ? 0.1
          : progressController.percentage.value == 1
              ? 0.2
              : progressController.percentage.value == 2
                  ? 0.4
                  : progressController.percentage.value == 3
                      ? 0.6
                      : progressController.percentage.value == 4
                          ? 0.8
                          : progressController.percentage.value == 5
                              ? 0.9
                              : progressController.percentage.value == 6
                                  ? 1
                                  : 1,
      // : progressController.percentage.value == 7
      //     ? 0.8
      //     : progressController.percentage.value == 8
      //         ? 0.9
      //         : 1,
      //  widget.percentage,
      alignment: MainAxisAlignment.center,
      barRadius: Radius.circular(5.0.sp),
      backgroundColor: Color(0xff134fb0),
      progressColor: Colors.white,
    );
  }
}

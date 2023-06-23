import 'package:flutter/material.dart';
import 'package:task_1/const/responsive/res.dart';

class ProgressBarButtons extends StatefulWidget {
  Widget customizedWidget;
  ProgressBarButtons({super.key, required this.customizedWidget});

  @override
  State<ProgressBarButtons> createState() => _ProgressBarButtonsState();
}

class _ProgressBarButtonsState extends State<ProgressBarButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.0.hp,
      width: MediaQuery.of(context).size.width - 25.0.wp,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff6198f2), width: 1),
          borderRadius: BorderRadius.circular(10.0.sp)),
      child: widget.customizedWidget,
      alignment: Alignment.center,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task_1/const/responsive/res.dart';

class MainTitleContent extends StatefulWidget {
  var title;
  MainTitleContent({super.key, this.title});

  @override
  State<MainTitleContent> createState() => _MainTitleContentState();
}

class _MainTitleContentState extends State<MainTitleContent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2.0.hp,
      child: Text(
        widget.title,
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
    );
  }
}

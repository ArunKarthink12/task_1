import 'package:flutter/material.dart';

class ProgressSecondScreen extends StatefulWidget {
  const ProgressSecondScreen({super.key});

  @override
  State<ProgressSecondScreen> createState() => _ProgressSecondScreenState();
}

class _ProgressSecondScreenState extends State<ProgressSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("CREATE BUSINESS PROFILE"),
          Text(
            "Start Building Your Business Profile",
            maxLines: 2,
          )
        ],
      ),
    );
  }
}

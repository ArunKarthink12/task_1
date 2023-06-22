import 'package:flutter/material.dart';

class ProgressThirdScreen extends StatefulWidget {
  const ProgressThirdScreen({super.key});

  @override
  State<ProgressThirdScreen> createState() => _ProgressThirdScreenState();
}

class _ProgressThirdScreenState extends State<ProgressThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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

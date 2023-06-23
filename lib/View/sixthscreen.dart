import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_1/const/colors/colorsconfig.dart';
import 'package:task_1/const/responsive/res.dart';
import 'package:task_1/widgets/titlecontent.dart';

import '../controller/progressbarcontroller.dart';
import '../widgets/minibuttonmodel.dart';

class Progress7thScreen extends StatefulWidget {
  const Progress7thScreen({super.key});

  @override
  State<Progress7thScreen> createState() => _Progress7thScreenState();
}

class _Progress7thScreenState extends State<Progress7thScreen> {
  ProgressController progressController = Get.put(ProgressController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              SizedBox(
                height: 5.0.hp,
              ),
              MainTitleContent(
                title: " ADD PHOTO OF YOUR BUSINESS ",
              ),
              SizedBox(
                height: 2.0.hp,
              ),
              Text(
                "Business phtots create your customers first \n impression of your company. The best\n photos send a message to customers about \n the company's value ,create brand loyality",
                style: TextStyle(fontWeight: FontWeight.w400),
                maxLines: 5,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 2.0.hp,
              ),
              Text(
                "Upload logo for your buisness the \n ",
                style: TextStyle(fontWeight: FontWeight.w400),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 3.0.hp,
              ),
              MiniButtonModel(
                bgColors: backgroundclr,
                borderColor: borderclorr,
                title: "Upload Logo",
                borderWidth: 2,
              ),
              SizedBox(
                height: 2.0.hp,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Future.delayed(Duration.zero, () async {
                            await profilefilepicker();
                          });
                        },
                        child: Center(
                          child: progressController.ibusinesslogo.path == ""
                              ? Text(
                                  'Image',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                )
                              : Image.file(
                                  File(progressController.ibusinesslogo.path)),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          _removeImage();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ])));
  }

  void _removeImage() {
    if (progressController.ibusinesslogo != null) {
      progressController.ibusinesslogo.deleteSync();
      setState(() {
        progressController.ibusinesslogo = File('');
      });
    }
  }

  Future profilefilepicker() async {
    var result = await ImagePicker().pickImage(source: ImageSource.camera);
    final file = File(result!.path);

    if (result != null) {
      setState(() {
        progressController.ibusinesslogo = file;
      });
    } else {
      return null;
    }
  }
}

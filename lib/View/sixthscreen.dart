import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_1/const/colors/colorsconfig.dart';
import 'package:task_1/const/responsive/res.dart';
import 'package:task_1/controller/progressbarcontroller.dart';
import 'package:task_1/widgets/minibuttonmodel.dart';
import 'package:task_1/widgets/titlecontent.dart';

class Progress7thScreen extends StatefulWidget {
  const Progress7thScreen({super.key});

  @override
  State<Progress7thScreen> createState() => _Progress7thScreenState();
}

class _Progress7thScreenState extends State<Progress7thScreen> {
  ProgressController progressController = Get.put(ProgressController());
  CarouselController buttonCarouselController = CarouselController();
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
                title: "Upload Image",
                borderWidth: 2,
              ),
              SizedBox(
                height: 2.0.hp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        progressController.selectedImages.length > 1
                            ? buttonCarouselController.previousPage()
                            : Fluttertoast.showToast(
                                msg: "Add More then 1 to Active the Function");
                        setState(() {});
                      },
                      icon: Icon(Icons.arrow_back_ios)),
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
                              child: progressController.selectedImages.isEmpty
                                  ? Text(
                                      'Image',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    )
                                  : SizedBox(
                                      width: 200,
                                      height: 200,
                                      child: CarouselSlider(
                                        items: progressController.selectedImages
                                            .map((i) {
                                          return Builder(
                                            builder: (BuildContext context) {
                                              return Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 5.0),
                                                  // decoration: BoxDecoration(
                                                  //     color: Colors.amber),
                                                  child: Image.file(
                                                    File(i.path.toString()),
                                                    // style:
                                                    //     TextStyle(fontSize: 16.0),
                                                  ));
                                            },
                                          );
                                        }).toList(),
                                        carouselController:
                                            buttonCarouselController,
                                        options: CarouselOptions(
                                          autoPlay: false,
                                          enlargeCenterPage: true,
                                          viewportFraction: 0.9,
                                          aspectRatio: 1,
                                          initialPage: 2,
                                        ),
                                      ),
                                    ),
                              //     File(progressController.ibusinesslogo.path)),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              // _removeImage();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        progressController.selectedImages.length > 1
                            ? buttonCarouselController.nextPage()
                            : Fluttertoast.showToast(
                                msg: "Add More then 1 to Active the Function");

                        setState(() {});
                      },
                      icon: Icon(Icons.arrow_forward_ios_outlined)),
                ],
              ),
            ])));
  }

  Widget multiImage(index) {
    return Container(
      height: 200,
      width: 200,
      alignment: Alignment.center,
      child: Image.file(
          File(progressController.selectedImages[index].path.toString())),
    );
  }

  // void _removeImage() {

  //   if (progressController.ibusinesslogo != null) {
  //     progressController.ibusinesslogo.deleteSync();
  //     setState(() {
  //       progressController.ibusinesslogo = File('');
  //     });
  //   }
  // }

  Future profilefilepicker() async {
    final ImagePicker picker = ImagePicker();
    final List<XFile> images = await picker.pickMultiImage();
    ;
    // To set maxheight of images that you want in your app
    List<XFile> xfilePick = images;

    // if atleast 1 images is selected it will add
    // all images in selectedImages
    // variable so that we can easily show them in UI
    if (xfilePick.isNotEmpty) {
      for (var i = 0; i < xfilePick.length; i++) {
        progressController.selectedImages.add(File(xfilePick[i].path));
      }
      setState(
        () {},
      );
    } else {
      // If no image is selected it will show a
      // snackbar saying nothing is selected
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Nothing is selected')));
    }
  }
}

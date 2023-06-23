import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProgressController extends GetxController {
  RxInt percentage = 0.obs;
  List logos = [
    'image/building.png',
    "image/mail.png",
    "image/location.png",
    // "image/mail.png",
    "image/i.png",
    "image/i.png",
    "image/upload.png",
    "image/upload.png",
    "image/star.png",
    "image/mail.png",
  ];
  List title = [
    "Business Profile",
    "Location & Contact Info",
    "Google Location",
    "Add Business Description",
    "Add Business Image",
    "Add Business Image",
    "Add Business Image",
    "Publish",
    "Datas"
  ];
  File businesslogo = File("");
  File ibusinesslogo = File("");
  final emptyFile = File('');
  Future profilefilepicker() async {
    var result = await ImagePicker().pickImage(source: ImageSource.gallery);
    final file = File(result!.path);

    if (result != null) {
      // setState(() {
      businesslogo = file;
      // });
    } else {
      return null;
    }
  }

  Future iprofilefilepicker() async {
    var result = await ImagePicker().pickImage(source: ImageSource.gallery);
    final file = File(result!.path);

    if (result != null) {
      // setState(() {
      ibusinesslogo = file;
      // });
    } else {
      return null;
    }
  }
}

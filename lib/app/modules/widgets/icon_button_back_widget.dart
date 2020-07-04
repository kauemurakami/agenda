import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconButtonBackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
          icon: Icon(Icons.arrow_back_ios), onPressed: () => Get.back()),
    );
  }
}
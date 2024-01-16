// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_setup/widgets/title_text_view.dart';

import '../utils/color.dart';

AppBar customAppBar(String title, dynamic leading, dynamic action) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: TitleTextView(
      title,
      fontSize: Get.width<600?16:18,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    centerTitle: true,
    backgroundColor: ColorConst.themeColor,
    leading: leading,
    actions: action,
  );
}

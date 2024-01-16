import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_setup/widgets/title_text_view.dart';

import '../utils/color.dart';

Widget smallText(String title) {
  return TitleTextView(
    title,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorConst.appVersion,
  );
}

Widget mediumText(String title) {
  return TitleTextView(
    title,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );
}
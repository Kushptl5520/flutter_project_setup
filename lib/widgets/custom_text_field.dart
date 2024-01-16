// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_setup/widgets/title_text_view.dart';

import '../utils/color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? nextField;
  final String titleText;
  final String? hintText;
  final String? labelText;
  final bool? obscureText;
  final bool? readOnlyText;
  final Color color;
  final IconButton? icon;
  final dynamic onChanged;
  final dynamic onEdit;
  final dynamic onSubmit;
  final dynamic inputFormatters;
  final dynamic textCapitalization;

  const CustomTextField(
      {Key? key,
      required this.titleText,
      required this.color,
      required this.hintText,
      this.controller,
      required this.keyboardType,
      required this.nextField,
      this.labelText,
      this.icon,
      this.obscureText,
      this.readOnlyText,
      this.onChanged,
      this.onEdit,
      this.onSubmit,
        this.inputFormatters,
        this.textCapitalization
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.width<600?50:60,
      width: Get.width - 60,
      padding: EdgeInsets.only(
        left: 25,
        top: 7,
        right: 20,
      ),
      decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleTextView(
                  titleText,
                  fontSize: Get.width<600?11:14,
                  color: color,
                ),
                TextField(
                  textInputAction: nextField,
                  keyboardType: keyboardType,
                  controller: controller,
                  cursorColor: color,
                  obscuringCharacter: '*',
                  obscureText: obscureText ?? false,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0.0),
                    isDense: true,
                    hintText: hintText,
                    hintStyle:
                    TextStyle(fontSize: 15, color: ColorConst.appVersion),
                    border: InputBorder.none,
                  ),
                  minLines: 1,
                  maxLines: 1,
                )
              ],
            ),
          ),
          if(icon != null)
          SizedBox(
            height: 20,
            width: 20,
            child: icon,
          ),
        ],
      ),
    );
  }
}

// class CustomPasswordTextField extends StatelessWidget {
//   final TextEditingController controller;
//   final TextInputType? keyboardType;
//   final TextInputAction? nextField;
//   final String titleText;
//   final String? hintText;
//   final String? labelText;
//   final bool? obscureText;
//   final Color color;
//   final Widget? icon;
//
//   const CustomPasswordTextField({
//     super.key,
//     required this.titleText,
//     required this.color,
//     required this.hintText,
//     required this.controller,
//     required this.keyboardType,
//     required this.nextField,
//     this.labelText,
//     this.icon,
//     this.obscureText,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: Get.width<600?50:60,
//       width: Get.width - 60,
//       padding: EdgeInsets.only(
//         left: 25,
//         top: 7,
//         right: 20,
//       ),
//       decoration: BoxDecoration(
//           border: Border.all(color: color),
//           borderRadius: BorderRadius.circular(50)),
//       child: Row(
//         children: [
//           Flexible(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 TitleTextView(
//                   titleText,
//                   fontSize: 11,
//                   color: color,
//                 ),
//                 TextField(
//                   textInputAction: nextField,
//                   keyboardType: keyboardType,
//                   controller: controller,
//                   cursorColor: color,
//                   obscuringCharacter: '*',
//                   obscureText: obscureText ?? false,
//                   decoration: InputDecoration(
//                     contentPadding: EdgeInsets.all(0.0),
//                     isDense: true,
//                     hintText: hintText,
//                     hintStyle:
//                         TextStyle(fontSize: 15, color: ColorConst.appVersion),
//                     border: InputBorder.none,
//                   ),
//                   minLines: 1,
//                   maxLines: 1,
//                 )
//               ],
//             ),
//           ),
//           // if(icon == null)
//             SizedBox(
//             height: 20,
//             width: 20,
//             child: icon,
//           ),
//         ],
//       ),
//     );
//   }
// }

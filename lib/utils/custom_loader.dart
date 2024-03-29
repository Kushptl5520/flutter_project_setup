// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'color.dart';


BuildContext? _progressContext;

void showProgressbarDialog(BuildContext context, {Color? loaderColor}) {
  if (_progressContext == null) {
    showDialog(
        barrierColor: Colors.transparent,
        context: context,
        barrierDismissible: false,
        builder: (con) {
          _progressContext = con;
          return Center(
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12.withOpacity(0.30)),
              child:  Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SpinKitCircle(
                        size: 50,
                        color: ColorConst.teal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

void hideProgressDialog() {
  if (_progressContext != null) {
    debugPrint('Context Not Null');
    Navigator.pop(_progressContext!);
    _progressContext = null;
  } else {
    debugPrint('Context Null');
  }
}

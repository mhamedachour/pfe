import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:toast/toast.dart';

AlertDiaLog(BuildContext context, String msg) {
  Toast.show(msg, duration: Toast.lengthLong, gravity: Toast.bottom);
}

validateEmail() {
  // final RegExp emailReq = new RegExp();
}

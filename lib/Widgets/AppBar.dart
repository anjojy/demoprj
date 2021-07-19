import 'package:flutter/material.dart';

AppBar InstaAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      'Instagram',
      textAlign: TextAlign.start,
      style: TextStyle(
        color: Colors.black,
        fontSize: 22,
      ),
    ),
    leading: Icon(
      Icons.camera_alt_outlined,
      size: 30,
      color: Colors.black,
    ),
    actions: [
      Icon(
        Icons.send_outlined,
        size: 30,
        color: Colors.black,
      ),
      SizedBox(
        width: 10,
      )
    ],
  );
}

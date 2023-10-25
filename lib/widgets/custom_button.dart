import 'package:flutter/material.dart';

defaultButton(
    {required String str,
      required VoidCallback? onTap}) {
  return Padding(padding: EdgeInsets.all(15),child: Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(15),
          color: Colors.grey),
      child: GestureDetector(
        child: Center(
          child: Text(
            "${str}",
            style: TextStyle(fontSize: 25, color: Color(0xff2B475E)),
          ),
        ),
        onTap: onTap,
      )),);
}
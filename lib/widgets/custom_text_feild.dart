import 'package:flutter/material.dart';

defaultFormField({
  required String hint,
  required Function(String)? onChanged,
  TextInputType?inputType,
  bool obscuretext =false,
}) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: TextFormField(
      obscureText: obscuretext,
      onChanged: onChanged,
      keyboardType: inputType,
      decoration: InputDecoration(
          hintText: '${hint}',
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10))),
    ),
  );
}

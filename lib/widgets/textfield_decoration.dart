import 'package:flutter/material.dart';

InputDecoration textFieldDecoration({required String hintText}) {
  return InputDecoration(
      hintText: hintText,
      border: const OutlineInputBorder(),
      contentPadding: const EdgeInsets.only(right: 15, left: 15),
      enabledBorder: InputBorder.none);
}

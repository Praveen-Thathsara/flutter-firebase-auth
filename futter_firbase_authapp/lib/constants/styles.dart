import 'package:flutter/material.dart';
import 'package:futter_firbase_authapp/constants/colors.dart';

const TextStyle descriptionStyle = TextStyle(
  fontSize: 12,
  color: textLight,
  fontWeight: FontWeight.w200,
);

const textInputDecoration = InputDecoration(
  hintText: "Email",
  hintStyle: TextStyle(
    color: const Color.fromARGB(128, 255, 255, 255),
    fontSize: 15,
  ),
  fillColor: bgBlack,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: mainZian),
    borderRadius: BorderRadius.all(Radius.circular(100)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: mainZian),
    borderRadius: BorderRadius.all(Radius.circular(100)),
  ),
);

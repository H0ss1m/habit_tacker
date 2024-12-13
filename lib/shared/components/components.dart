import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget DefoultButton({
  required String? text,
  bool isUpercase = true,
  double width = double.infinity,
  Color color = const Color(0xffefa803),
  required void Function() onPress,
  FontWeight weight = FontWeight.w400,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: MaterialButton(
        onPressed: onPress,
        child: Text(
          isUpercase ? text!.toUpperCase() : "$text",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
              fontWeight: weight,
              fontSize: 18),
        ),
      ),
    );

Widget textStyle({
  required String text,
  required double size,
  Color color = Colors.white,
  bool inCenter = false,
  FontWeight weight = FontWeight.w400,
}) =>
    Text(
      text,
      style: TextStyle(
          overflow: TextOverflow.clip,
          fontSize: size,
          fontFamily: "Poppins",
          fontWeight: weight,
          color: color),
      textAlign: !inCenter ? TextAlign.start : TextAlign.center,
    );

Widget textForm({
  bool autoFocus = false,
  TextInputType? keyboardType,
  required String text,
  bool isPassword = false,
  bool suffix = false,
  required Widget prefix,
  TextEditingController? controller,
  String errorMessage = "It's empty",
}) =>
    TextFormField(
      cursorColor: const Color(0xffefa803),
      style: const TextStyle(color: Colors.white),
      autofocus: autoFocus,
      controller: controller,
      keyboardType: keyboardType,
      validator: (value) {
        if (value!.isEmpty) {
          return errorMessage;
        }
        return null;
      },
      decoration: InputDecoration(
          fillColor: const Color(0xff292929),
          filled: true,
          labelText: text,
          labelStyle: const TextStyle(
            color: Colors.grey,
          ),
          prefixIcon: prefix,
          suffixIcon: suffix
              ? isPassword
                  ? IconButton(
                      onPressed: () {
                        isPassword = true;
                      },
                      icon: const Icon(
                        Icons.visibility_outlined,
                        color: Colors.grey,
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        isPassword = false;
                      },
                      icon: const Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.grey,
                      ),
                    )
              : null,
          border: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            color: Color(0xffefa803),
          ))),
    );

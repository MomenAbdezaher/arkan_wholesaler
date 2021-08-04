
import 'package:flutter/material.dart';

Widget buildTextField(
    String label,
    TextInputType keyboard,
    IconData iconData,
    TextEditingController controller,
    TextInputAction textInputAction,
    expands,
    int X,
    ) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    child: TextField(
      keyboardType: keyboard,
      maxLines: X,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        icon: Icon(iconData),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(width: 1),
        ),
        labelText: label,
      ),
      controller: controller,
    ),
  );
}
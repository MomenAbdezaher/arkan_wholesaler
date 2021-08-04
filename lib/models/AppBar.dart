
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar homeAppBar() {
  return AppBar(
    elevation: 0,
    title: Text(
      'مرحبا بكم',
      style: GoogleFonts.getFont('Almarai'),
    ),
    centerTitle: false,
  );
}
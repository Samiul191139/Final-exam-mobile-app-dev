import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowData extends StatelessWidget {
   final String text;
  const ShowData({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:  AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(
          "Data Passing Page",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: Text("Data from previous page--\n$text",
          style: GoogleFonts.pompiere(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
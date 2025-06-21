import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondAcivity extends StatelessWidget {
  const SecondAcivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(
          "Second Acivity",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(child: Text("Hello there! This is the 2nd activity section.",style: GoogleFonts.pompiere(fontSize: 24,fontWeight: FontWeight.w700),),),
    );
  }
}
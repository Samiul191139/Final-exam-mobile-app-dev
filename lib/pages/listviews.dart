import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class listViewPage extends StatelessWidget {
  final List<String> names = ['Alice', 'Bob', 'Charlie', 'Diana', 'Ethan'];
   listViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:  AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: Text(
          "List View Page",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
       body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.person),
          title: Text(names[index],
                style: GoogleFonts.pompiere(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
        ),
      ),
    
    );
  
  }
}
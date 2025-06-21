import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void Alert(BuildContext context){
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Confirmation",style: GoogleFonts.poppins(),),
      content:  Text('Would you like to proceed?',
            style: GoogleFonts.pompiere(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
       actions: [
            TextButton(
              child:  Text('No', style: GoogleFonts.poppins()),
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Not confirmed')));
              },
            ),
            TextButton(
              child:  Text('Yes', style: GoogleFonts.poppins()),
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Confirmed')));
              },
            ),
            
          ],
    ),
  );
}
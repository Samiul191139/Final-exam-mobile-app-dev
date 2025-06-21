import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  final Color? backgroundColor;
  final Color? textcolor;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.label,
    this.backgroundColor,
    this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      label: Text(
        label,
        style: GoogleFonts.pompiere(
          color: textcolor ?? Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      icon: Icon(icon,color: textcolor??Colors.white,),
        style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        backgroundColor: backgroundColor ?? Colors.indigoAccent.shade400,
        elevation: 6,
        shadowColor: (backgroundColor ?? Colors.indigoAccent),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}

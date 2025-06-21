// recycler_view_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecyclerViewPage extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

  RecyclerViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(
          "Recycler Page",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder:
            (context, index) => Card(
              elevation: 3,
              shadowColor: Colors.teal,
              margin: EdgeInsets.all(6),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  items[index],
                  style: GoogleFonts.pompiere(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
      ),
    );
  }
}

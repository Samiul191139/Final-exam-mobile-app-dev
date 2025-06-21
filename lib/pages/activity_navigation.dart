// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobail_app_final_sami/component/custom_button.dart';
import 'package:mobail_app_final_sami/pages/alert.dart';
import 'package:mobail_app_final_sami/pages/listviews.dart';
import 'package:mobail_app_final_sami/pages/recycle_view.dart';
import 'package:mobail_app_final_sami/pages/second_acivity.dart';
import 'package:mobail_app_final_sami/pages/show_data.dart';

class ActivityNavigation extends StatelessWidget {
  const ActivityNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController text = TextEditingController();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Activities",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Column(
          children: [
            _glassTextField(text),
            const SizedBox(height: 25),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  _navCard(
                    context,
                    icon: Icons.new_label,
                    label: "Second Activity",
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondAcivity(),
                          ),
                        ),
                  ),
                  _navCard(
                    context,
                    icon: Icons.recycling,
                    label: "Recycler Page",
                    color: Colors.deepPurple,
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecyclerViewPage(),
                          ),
                        ),
                  ),
                  _navCard(
                    context,
                    icon: Icons.send,
                    label: "Send Data",
                    color: Colors.blue,
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShowData(text: text.text),
                          ),
                        ),
                  ),
                  _navCard(
                    context,
                    icon: Icons.add_alert,
                    label: "Alert Me!",
                    color: Colors.orange,
                    onTap: () => Alert(context),
                  ),
                  _navCard(
                    context,
                    icon: Icons.person,
                    label: "Person List",
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => listViewPage(),
                          ),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _glassTextField(TextEditingController controller) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white.withOpacity(0.3)),
        ),
        child: TextField(
          controller: controller,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Hello World...',
            hintStyle: GoogleFonts.poppins(color: Colors.white70),
            labelText: 'Write Anything',
            labelStyle: GoogleFonts.poppins(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _navCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
    Color color = Colors.teal,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.9),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.4),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 36, color: Colors.white),
              const SizedBox(height: 10),
              Text(
                label,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

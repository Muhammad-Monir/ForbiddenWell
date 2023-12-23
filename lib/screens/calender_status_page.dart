import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalendarStatusPage extends StatelessWidget {
  const CalendarStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calendar & Time Status',
          style: GoogleFonts.ubuntu(
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/menu.png',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Choose From Calendar',
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

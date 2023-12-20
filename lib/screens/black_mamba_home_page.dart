import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlackMambaHomePage extends StatelessWidget {
  const BlackMambaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.bottomCenter,
          colors: [
            Color(0xFFEAAB78),
            Color(0xFFFFFFFF),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
          children: [
            ListTile(
              title: Text(
                'Welcome!',
                style: GoogleFonts.ubuntu(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              trailing: Image.asset(
                'assets/images/menu.png',
                width: 32,
                height: 32,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 500,),
            Center(child: Text('Home'),)
          ],
        ),
      ),
    );
  }
}

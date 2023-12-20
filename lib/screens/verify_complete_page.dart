import 'package:black_mamba/screens/black_mamba_home_page.dart';
import 'package:black_mamba/screens/navigation_menu.dart';
import 'package:black_mamba/utils/button/short_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyCompletePage extends StatelessWidget {
  const VerifyCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/img_success.png',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 30,),
            Text(
              'Welcome to Forbidden Well',
              style: GoogleFonts.ubuntu(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Massage & Enjoy',
              style:
                  GoogleFonts.ubuntu(fontWeight: FontWeight.w400, fontSize: 16),
            ),
            const SizedBox(
              height: 30,
            ),
            ShortButton(
              title: 'Start Browse',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigationMenu(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

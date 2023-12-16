import 'package:black_mamba/utils/button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'log_in_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/onboarding.png',
              height: 336.91,
              width: 331,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Relax, Rejuvenate, Recharge!',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Relax, Rejuvenate, Recharge!',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            CustomButton(
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LogInPage(),
                ),
              ),
              title: 'Continue',
            ),
          ],
        ),
      ),
    );
  }
}

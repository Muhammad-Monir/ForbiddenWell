import 'package:black_mamba/screens/log_in_page.dart';
import 'package:black_mamba/utils/button/short_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangeCompletedPasswordPage extends StatelessWidget {
  const ChangeCompletedPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/done.png',
              width: 56,
              height: 58.39,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Congrats!',
              style:
                  GoogleFonts.ubuntu(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'You have successfully change password.\n Please use the new password when logging in.',
                style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 60,),
            ShortButton(
              title: 'Log In Now',
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LogInPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

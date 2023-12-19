import 'package:black_mamba/screens/verify_complete_page.dart';
import 'package:black_mamba/utils/button/short_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class VerificationCodePage extends StatelessWidget {
  const VerificationCodePage({super.key});

  final String _time = '00:28';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        children: [
          Text(
            'Verification Code',
            style: GoogleFonts.ubuntu(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'We texted you a verification code.\nPlease enter it below.',
            style: GoogleFonts.ubuntu(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          OTPTextField(
            fieldWidth: 50,
            fieldStyle: FieldStyle.box,
            length: 4,
            keyboardType: TextInputType.number,
            width: MediaQuery.of(context).size.width,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            textFieldAlignment: MainAxisAlignment.spaceAround,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Having trouble? '),
              Text('Request a new code in $_time'),
            ],
          ),
          const SizedBox(height: 80,),
          ShortButton(
            title: 'Verify Account',
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const VerifyCompletePage(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

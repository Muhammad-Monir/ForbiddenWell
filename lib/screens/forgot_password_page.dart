import 'package:black_mamba/utils/button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'change_password_page.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Forgot Password',
                  style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.w700, fontSize: 30),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Please entry your email below to receive your password reset instructions',
                  style: GoogleFonts.ubuntu(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'EMAIL',
                  style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'yourmail@gmail.com',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'this field not empty';
                    } else if (value.isNotEmpty) {
                      return 'input valid gmail address';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  title: 'Send Email',
                  onPressed: () {
                    _sendEmail();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _sendEmail() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ChangePasswordPage(),
        ));
  }
}

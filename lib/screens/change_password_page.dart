import 'package:black_mamba/screens/change_completed_password_page.dart';
import 'package:black_mamba/utils/button/long_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _resetPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool isObscureNew = true;
  bool isObscureConfirm = true;

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
                  'Change Password',
                  style: GoogleFonts.ubuntu(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Rest code was sent to your email. Please entry the code and create new password',
                  style: GoogleFonts.ubuntu(fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'REST CODE',
                  style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                TextFormField(
                  controller: _resetPasswordController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'NEW PASSWORD',
                  style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                TextFormField(
                  controller: _newPasswordController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscureNew = !isObscureNew;
                        });
                      },
                      icon: Icon(isObscureNew
                          ? Icons.remove_red_eye_outlined
                          : Icons.visibility_off_outlined),
                    ),
                  ),
                  obscureText: isObscureNew,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'CONFIRM PASSWORD',
                  style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                TextFormField(
                  controller: _confirmPasswordController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscureConfirm = !isObscureConfirm;
                        });
                      },
                      icon: Icon(isObscureConfirm
                          ? Icons.remove_red_eye_outlined
                          : Icons.visibility_off_outlined),
                    ),
                  ),
                  obscureText: isObscureConfirm,
                ),
                const SizedBox(
                  height: 40,
                ),
                LongButton(
                  title: 'Change Password',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ChangeCompletedPasswordPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

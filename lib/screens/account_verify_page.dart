import 'package:black_mamba/screens/verification_code_page.dart';
import 'package:black_mamba/utils/button/long_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountVerifyPage extends StatefulWidget {
  const AccountVerifyPage({super.key});

  @override
  State<AccountVerifyPage> createState() => _AccountVerifyPageState();
}

class _AccountVerifyPageState extends State<AccountVerifyPage> {
  final _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        children: [
          Text(
            'Verify Your Account',
            style: GoogleFonts.ubuntu(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'To verify your account we will send you unique code, please enter your phone number below.',
            style: GoogleFonts.ubuntu(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'PHONE NUMBER',
            style: GoogleFonts.ubuntu(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            children: [
              const CountryCodePicker(
                initialSelection: 'IT',
                favorite: ['+1', 'US'],
                showCountryOnly: false,
              ),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Center(
                    child: TextFormField(
                      controller: _phoneNumberController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 10.0,
                        ),
                        hintText: 'phone number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 5.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'By entering your phone number, you agree to receive one automated text message from Giva from your phone number.',
            style: GoogleFonts.ubuntu(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 30,),
          LongButton(
            title: 'Send Verification Code',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const VerificationCodePage(),));
            },
          ),
        ],
      ),
    );
  }
}

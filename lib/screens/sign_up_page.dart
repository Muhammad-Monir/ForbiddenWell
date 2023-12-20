import 'package:black_mamba/data/services/firebase_auth_services.dart';
import 'package:black_mamba/screens/log_in_page.dart';
import 'package:black_mamba/screens/user_details_page.dart';
import 'package:black_mamba/utils/button/long_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Signup',
                    style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Welcome to Forbidden Well!',
                    style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'EMAIL',
                    style: GoogleFonts.ubuntu(fontWeight: FontWeight.w700),
                  ),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 5.0)),
                      labelText: 'yourmail@gmail.com',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'PASSWORD',
                    style: GoogleFonts.ubuntu(fontWeight: FontWeight.w700),
                  ),
                  TextFormField(
                    controller: _passwordController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(width: 5.0)),
                      labelText: 'input password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon: Icon(isObscure
                            ? Icons.remove_red_eye_outlined
                            : Icons.visibility_off_outlined),
                      ),
                    ),
                    obscureText: isObscure,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  LongButton(
                    title: 'Join now for FREE!',
                    onPressed: () {
                      _signUp();
                    },
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  Text(
                    'By clicking Join Forbidden Well, you are agreeing to the\n Terms of Use and the Privacy Policy',
                    style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () => logIn(),
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _signUp() async {
    if (_formKey.currentState!.validate()) {
      String email = _emailController.text;
      String password = _passwordController.text;
      User? user = await _auth.signUpEmailAndPassword(email, password);
      if (user != null) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const UserDetailsPage(),
            ));
      } else {
        print('some error happend');
      }
    }
  }

  logIn() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LogInPage(),
      ),
    );
  }
}

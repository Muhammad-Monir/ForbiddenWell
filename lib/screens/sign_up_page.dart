import 'package:black_mamba/screens/log_in_page.dart';
import 'package:black_mamba/utils/button/long_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                      border: OutlineInputBorder(),
                      hintText: 'yourmail@gmail.com',
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
                      border: const OutlineInputBorder(),
                      hintText: 'input password',
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

  void _signUp() {
    if (_formKey.currentState!.validate()) {}
  }

  logIn() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LogInPage(),
        ));
  }
}

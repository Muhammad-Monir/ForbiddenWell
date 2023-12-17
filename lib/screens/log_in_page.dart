import 'package:black_mamba/utils/button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'forgot_password_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              title: Text(
                'Login',
                style: GoogleFonts.ubuntu(
                  fontSize: 38,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                'Welcome back!',
                style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              trailing: Image.asset(
                'assets/images/mask_group.png',
                width: 48,
                height: 48,
              ),
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'EMAIL',
                      style: GoogleFonts.ubuntu(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 10,
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
                        }
                        else if(value.isNotEmpty) {
                          return 'input valid gmail address';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'PASSWORD',
                          style: GoogleFonts.ubuntu(fontWeight: FontWeight.w700),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgotPasswordPage(),
                            ),
                          ),
                          child: Text(
                            'Forgot Password',
                            style: GoogleFonts.ubuntu(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'this field not empty';
                        }
                        return null;
                      },
                      obscureText: isObscure,
                    ),
                    CustomButton(
                      title: 'Log In',
                      onPressed: () {
                        _logIn();
                      },
                    ),
                    Row(
                      children: [
                        Text(
                          "Don't have an account?",
                          style: GoogleFonts.ubuntu(
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                              fontSize: 14),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.ubuntu(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
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

  void _logIn() {
    if (_formKey.currentState!.validate()) {}
  }
}

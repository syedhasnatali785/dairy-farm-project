import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intern01/screens/forgotpassword_screen.dart';
import 'package:intern01/screens/home_screen.dart';
import 'package:intern01/screens/signup_screen.dart';
import 'package:intern01/widgets/cbuttons.dart';
import 'package:intern01/widgets/ctextfields.dart';
import 'package:intern01/widgets/socialmediaicons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 40,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dairy Farm Management System",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                "Welcome back!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text("New Here?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    child: Text('Create Account'),
                  ),
                ],
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    Ctextfields(
                      controller: _emailController,
                      ftitle: 'Email',
                      flabel: 'Email Address',
                      textinputtype: TextInputType.emailAddress,
                      prefixicon: FaIcon(FontAwesomeIcons.user),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter email';
                        }
                        if (!value.contains('@') || !value.contains('.')) {
                          return 'Please Enter Valid Email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),

                    Ctextfields(
                      controller: _passwordController,
                      ftitle: 'Enter Password',
                      flabel: 'Password',
                      prefixicon: FaIcon(FontAwesomeIcons.lock),
                      suffix: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotpasswordScreen(),
                            ),
                          );
                        },
                        icon: Text('Forgot?'),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Password';
                        } else if (value.length < 6) {
                          return 'Please Enter Strong Password';
                        }
                        if (!value.contains(RegExp(r'[0-9]')) ||
                            !value.contains(RegExp(r'[A-Z]')) ||
                            !value.contains(RegExp(r'[!@#%^$&*()?/><]'))) {
                          return 'password must contain at least one number, symbol and alphabet';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Cbuttons(
                        btitle: 'Login',
                        ontap: () {
                          if (_formkey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Processing...')),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Center(child: Text('or login with')),
              Socialmediaicons(ontap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

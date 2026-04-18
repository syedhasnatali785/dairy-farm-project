import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intern01/screens/business_details.dart';
import 'package:intern01/screens/home_screen.dart';
import 'package:intern01/screens/login_screen.dart';
import 'package:intern01/widgets/cbuttons.dart';
import 'package:intern01/widgets/ctextfields.dart';
import 'package:intern01/widgets/socialmediaicons.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _repassController = TextEditingController();
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Dairy Farm Management System'),
              Text(
                'Signup 1 of 4',
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              Text(
                'Welcome!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Socialmediaicons(ontap: () {}),
              Form(
                key: _formkey,
                child: Column(
                  spacing: 15,
                  children: [
                    Ctextfields(
                      controller: _nameController,

                      ftitle: 'Full Name',
                      flabel: 'Name',

                      prefixicon: FaIcon(FontAwesomeIcons.person),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Valid Name';
                        }
                        return null;
                      },
                    ),
                    Ctextfields(
                      controller: _emailController,
                      prefixicon: Icon(Icons.email),
                      ftitle: 'Email Address',
                      flabel: 'Email',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Fill all fields';
                        }
                        if (!value.contains('@')) {
                          return 'please enter valid email';
                        }
                        return null;
                      },
                    ),

                    Ctextfields(
                      controller: _phoneController,

                      ftitle: 'Phone Number',
                      flabel: 'Phone',
                      prefixicon: FaIcon(FontAwesomeIcons.phone),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'nV';
                        }
                        return null;
                      },
                    ),
                    Ctextfields(
                      controller: _passController,
                      prefixicon: FaIcon(FontAwesomeIcons.lock),
                      ftitle: 'Password',
                      flabel: 'Password',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill password field';
                        } else if (value.length < 6) {
                          return 'Please type a stronger password';
                        }
                        return null;
                      },
                    ),
                    Ctextfields(
                      prefixicon: FaIcon(FontAwesomeIcons.lock),
                      controller: _repassController,
                      ftitle: 'Please Re-Enter Password',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill re-enter password field';
                        } else if (value != _passController.text) {
                          return 'Password doesnt match';
                        }
                        return null;
                      },
                      flabel: 'Re-Enter Password',
                    ),
                    Cbuttons(
                      btitle: 'Continue',
                      ontap: () {
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Creating Account...')),
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BusinessDetails(),
                            ),
                          );
                        }
                      },
                    ),
                    Cbuttons(
                      btitle: 'Login',
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

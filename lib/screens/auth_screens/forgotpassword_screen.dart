import 'package:flutter/material.dart';
import 'package:intern01/widgets/cbuttons.dart';
import 'package:intern01/widgets/ctextfields.dart';

class ForgotpasswordScreen extends StatefulWidget {
  const ForgotpasswordScreen({super.key});

  @override
  State<ForgotpasswordScreen> createState() => _ForgotpasswordScreenState();
}

class _ForgotpasswordScreenState extends State<ForgotpasswordScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dairy Farm Management System')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 25,
          children: [
            Text('Password Reset'),
            Form(
              key: _formkey,
              child: Ctextfields(
                controller: _emailcontroller,
                ftitle: 'Enter Your Email Address',
                flabel: 'Email',
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return 'Please enter email';
                  }
                  if (!p0.contains('@') || !p0.contains('.')) {
                    return 'Please Enter Valid Email';
                  }
                  return null;
                },
                textinputtype: TextInputType.emailAddress,
              ),
            ),
            Cbuttons(
              btitle: 'Send Reset Link',
              ontap: () {
                if (_formkey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Password Reset Link sent to ${_emailcontroller.text}. if it is registered, it will drop right to your mailbox',
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

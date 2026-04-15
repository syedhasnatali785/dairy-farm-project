import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 50,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome back!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text("New Here?"),
                TextButton(onPressed: () {}, child: Text('Create Account')),
              ],
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    gapPadding: 2,
                  ),
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: 'Email Address',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * .04,
                  horizontal: MediaQuery.of(context).size.width * .42,
                ),
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              child: Text('Login'),
            ),
            Text('or login with'),
            Row(
              spacing: 14,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: BoxBorder.all(color: Colors.grey),
                  ),
                  child: Icon(Icons.g_mobiledata),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: BoxBorder.all(color: Colors.grey),
                  ),
                  child: Icon(Icons.g_mobiledata),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: BoxBorder.all(color: Colors.grey),
                  ),
                  child: Icon(Icons.g_mobiledata),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

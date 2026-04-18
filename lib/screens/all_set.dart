import 'package:flutter/material.dart';
import 'package:intern01/screens/home_screen.dart';
import 'package:intern01/widgets/cbuttons.dart';

class AllSet extends StatelessWidget {
  const AllSet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Container(
            height: MediaQuery.of(context).size.height * .5,
            width: MediaQuery.of(context).size.width * .4,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(color: Colors.green, offset: Offset(1, 3))],
              color: const Color.fromARGB(255, 214, 255, 235),
            ),
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Column(
                spacing: 13,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.check_sharp, color: Colors.green, size: 50),
                  Text(
                    "You're all set!",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Your farm information will be saved locally on your device. You can update these details anytime from the settings.',
                  ),
                  SizedBox(height: 5),
                  Cbuttons(
                    btitle: 'Go to My Dashboard',
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

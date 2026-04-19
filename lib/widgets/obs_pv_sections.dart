import 'package:flutter/material.dart';
import 'package:intern01/widgets/cbuttons.dart';

class ObsPvSections extends StatelessWidget {
  const ObsPvSections({
    super.key,
    required this.h1,
    required this.d1,
    required this.img1,
    required this.h2,
    required this.d2,
    required this.img2,
    required this.h3,
    required this.d3,
    required this.img3,
  });
  final String h1;
  final String d1;
  final String img1;
  final String h2;
  final String d2;
  final String img2;
  final String h3;
  final String d3;
  final String img3;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        spacing: 20,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.greenAccent,
                border: Border.all(color: Colors.green),
                boxShadow: [
                  BoxShadow(color: Colors.lightGreen, offset: Offset(1, 2)),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(15),
                      child: Image.asset(
                        img1,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      h1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 20),

                    Text(d1),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.greenAccent,
                border: Border.all(color: Colors.green),
                boxShadow: [
                  BoxShadow(color: Colors.lightGreen, offset: Offset(1, 2)),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(15),
                      child: Image.asset(
                        img2,
                        fit: BoxFit.fill,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    SizedBox(height: 20),

                    Text(
                      h2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 20),

                    Text(d2),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.greenAccent,
                border: Border.all(color: Colors.green),
                boxShadow: [
                  BoxShadow(color: Colors.lightGreen, offset: Offset(1, 2)),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(15),
                      child: Image.asset(
                        img3,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    SizedBox(height: 20),

                    Text(
                      h3,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 20),

                    Text(d3),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

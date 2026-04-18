import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const Center(child: Text('Home Overview', style: TextStyle(fontSize: 32))),
    const Center(child: Text('Analytics', style: TextStyle(fontSize: 32))),
    const Center(child: Text('Settings', style: TextStyle(fontSize: 32))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // CUSTOM SIDEBAR
          Container(
            width: 300,
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 1. HEADER (Logo & Title)
                  //Group Column Start--------
                  Column(
                    children: [
                      Row(
                        spacing: 15,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.cow,
                            size: 50,
                            color: Colors.white,
                          ),
                          Text(
                            'Dairy Farm \nManagement System',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                      Divider(thickness: 3, color: Colors.white),
                    ],
                  ),
                  //Group Column End Header Widget Section--------
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.lightGreenAccent,
                          offset: Offset(1, 2),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        spacing: 15,
                        children: [
                          CircleAvatar(),
                          Column(
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                              Text(
                                'Owner',
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

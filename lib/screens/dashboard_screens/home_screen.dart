import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intern01/screens/auth_screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const Center(child: Text('Dashboard', style: TextStyle(fontSize: 32))),
    const Center(
      child: Text('Cattle Management', style: TextStyle(fontSize: 32)),
    ),
    const Center(
      child: Text('Milk Production', style: TextStyle(fontSize: 32)),
    ),
    const Center(
      child: Text('Feed & Inventory', style: TextStyle(fontSize: 32)),
    ),
    const Center(
      child: Text('Financial Records', style: TextStyle(fontSize: 32)),
    ),
    const Center(
      child: Text('Staff Management', style: TextStyle(fontSize: 32)),
    ),
    const Center(child: Text('Reports', style: TextStyle(fontSize: 32))),
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
                  Row(
                    //hader
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
                  //listbuttons
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        _buildNavItem(0, Icons.home_outlined, 'Dashboard'),
                        _buildNavItem(
                          1,
                          Icons.pest_control_rodent_outlined,
                          'Cattle Management',
                        ), // Icon approximation
                        _buildNavItem(
                          2,
                          Icons.local_drink_outlined,
                          'Milk Production',
                        ),
                        _buildNavItem(
                          3,
                          Icons.shopping_cart_outlined,
                          'Feed & Inventory',
                        ),
                        _buildNavItem(
                          4,
                          Icons.attach_money,
                          'Financial Records',
                        ),
                        _buildNavItem(
                          5,
                          Icons.people_outline,
                          'Staff Management',
                        ),
                        _buildNavItem(6, Icons.description_outlined, 'Reports'),
                      ],
                    ),
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
                  SizedBox(height: 10),
                  InkWell(
                    hoverColor: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Container(
                      height: 30,
                      width: 90,
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
                      child: Center(child: Text('Logout')),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Container(child: _pages[_selectedIndex])),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    bool _isSelected = _selectedIndex == index;
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: AnimatedContainer(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        duration: Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: _isSelected ? Colors.white : Colors.green,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          spacing: 2,
          children: [
            Icon(icon, color: _isSelected ? Colors.green : Colors.white),
            Text(
              label,
              style: TextStyle(
                color: _isSelected ? Colors.green : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

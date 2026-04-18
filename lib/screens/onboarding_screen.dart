import 'package:flutter/material.dart';
import 'package:intern01/screens/login_screen.dart';

class OnbData {
  final String image;
  final String title;
  final String desc;
  final String btitle;
  final Color bColor;
  final Color fColor;
  OnbData({
    required this.image,
    required this.title,
    required this.desc,
    required this.btitle,
    required this.bColor,
    this.fColor = Colors.white,
  });
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  void buttonClick() {
    if (_currentIndex == pages.length - 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    } else {
      _pageController.nextPage(
        duration: Duration(milliseconds: 700),
        curve: Curves.easeInOut,
      );
    }
  }

  int _currentIndex = 0;

  final List<OnbData> pages = [
    OnbData(
      image: 'assets/images/sc2.png',
      title: 'Quality',
      desc:
          'Sell your farm fresh products directly to consumers, cutting out the middleman and reducing emissions of the global supply chain. ',
      btitle: 'Join The Movement',
      bColor: Colors.green,
    ),
    OnbData(
      image: 'assets/images/sc3.png',
      title: 'Convenient',
      desc:
          'Our team of delivery drivers will make sure your orders are picked up on time and promptly delivered to your customers.',
      btitle: 'Join The Movement',
      bColor: Colors.redAccent,
    ),
    OnbData(
      image: 'assets/images/sc4.png',
      title: 'Local',
      bColor: Colors.yellowAccent,
      desc:
          'We love the earth and know you do too! Join us in reducing our local carbon footprint one order at a time. ',
      btitle: 'Join The Movement',
      fColor: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            itemCount: pages.length,
            itemBuilder: (context, index) {
              return Image.asset(
                pages[index].image,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              );
            },
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    pages[_currentIndex].title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    pages[_currentIndex].desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      pages.length,
                      (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        height: 8,
                        width: _currentIndex == index ? 24 : 8,
                        decoration: BoxDecoration(
                          color: _currentIndex == index
                              ? Colors.black87
                              : Colors.black26,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: pages[_currentIndex].bColor,
                        foregroundColor: pages[_currentIndex].fColor,
                      ),
                      onPressed: buttonClick,
                      child: Text(pages[_currentIndex].btitle),
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

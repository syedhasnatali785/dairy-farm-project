import 'package:flutter/material.dart';
import 'package:intern01/widgets/cbuttons.dart';
import 'package:intern01/widgets/obs_pv_sections.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40),
        child: Column(
          spacing: 10,
          children: [
            Text(
              'Welcome To Dairy Farm Management System!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              "Let's streamline your farm operations and boost productivity.",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 10),
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                children: [
                  ObsPvSections(
                    h1: '1. CATTLE MANAGEMENT',
                    d1: 'Keep detailed, up-to-date records of your herd. Track health history, breeding cycles, and individual animal statistics.',
                    img1: 'assets/images/onboarding_icons/1.png',
                    h2: '2. MILK PRODUCTION',
                    d2: 'Monitor your daily yields closely. Analyze production trends over time to optimize feeding and milking schedules.',
                    img2: 'assets/images/onboarding_icons/obs2.png',
                    h3: '3. FEED & FINANCES',
                    d3: 'Maintain perfect oversight of your feed inventory and track your financial records to ensure farm profitability.',
                    img3: 'assets/images/onboarding_icons/2.png',
                  ),
                  ObsPvSections(
                    h1: '4. STAFF & LABOR',
                    d1: 'Easily manage your farmhands. Assign daily milking shifts, track employee hours, and streamline your payroll process.',
                    img1: 'assets/images/onboarding_icons/obs1.png',
                    h2: '5. INSIGHTFUL REPORTS',
                    d2: 'Generate automated reports for milk quality, herd health, and financial compliance. Export data instantly for your vet or accountant.',
                    img2: 'assets/images/onboarding_icons/obs2.png',
                    h3: '6. SMART ALERTS',
                    d3: 'Never miss a vaccination or a low-feed warning. Get a bird\'s-eye view of daily tasks and urgent alerts right on your home dashboard.',
                    img3: 'assets/images/onboarding_icons/obs3.png',
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(2, (index) {
                bool isActive = _currentIndex == index;
                return AnimatedContainer(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  duration: Duration(milliseconds: 300),
                  height: 12,
                  width: isActive ? 40 : 12,
                  decoration: BoxDecoration(
                    color: isActive ? Colors.white : Colors.green,
                    border: Border.all(
                      color: isActive ? Colors.green : Colors.transparent,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                );
              }),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: 400,
              child: Cbuttons(btitle: 'FINISH & LAUNCH DFMS', ontap: () {}),
            ),
          ],
        ),
      ),
    );
  }
}

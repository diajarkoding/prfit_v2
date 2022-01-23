import 'package:flutter/material.dart';
import 'package:prfit_v2/ui/pages/info_page.dart';

import 'bmi_page.dart';
import 'home_page.dart';
import 'tutorial_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var currentIndex = 0;
  Widget customBottomNavBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              size: 26,
              color: currentIndex == 0 ? Colors.blue : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Tutorial',
            icon: Icon(
              Icons.fitness_center,
              size: 26,
              color: currentIndex == 1 ? Colors.blue : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Bmi',
            icon: Icon(
              Icons.calculate,
              size: 26,
              color: currentIndex == 2 ? Colors.blue : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Info',
            icon: Icon(
              Icons.info,
              size: 26,
              color: currentIndex == 3 ? Colors.blue : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();

      case 1:
        return const TutorialPage();

      case 2:
        return const BmiCalculator();

      case 3:
        return const InfoPage();

      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: customBottomNavBar(),
      body: body(),
    );
  }
}

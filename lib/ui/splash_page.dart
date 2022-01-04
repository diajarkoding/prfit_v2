import 'package:flutter/material.dart';
import 'dart:async';
import 'package:prfit_v2/ui/pages/main_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const MainPage())),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/logo/logo_fix.png"))),
        ),
      ),
    );
  }
}

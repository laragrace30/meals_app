import 'package:flutter/material.dart';
import 'splash_screen.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late BuildContext _capturedContext; 

  @override
  void initState() {
    super.initState();
    _capturedContext = context; 
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 2500), () {
      Navigator.pushReplacement(
        _capturedContext, 
        MaterialPageRoute(builder: (context) => const SplashScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFFCC00),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SplashScreen(),
                  ));
                },
                child: Image.asset(
                  'assets/images/yummersLogo 1.png',
                  width: 400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
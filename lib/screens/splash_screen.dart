import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories.dart';

import '../utils/app_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class SplashPage extends StatelessWidget {
  final String imagePath;
  final String title;

  const SplashPage({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20),
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF277BC0),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 200,
                height: 250,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> _descriptions = [
    AppText.description1,
    AppText.description2,
    AppText.description3,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFCC00),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Categories(),
                        ),
                      );
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: Color(0xFFAB8B0A), fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 500,
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: const [
                      SplashPage(
                        imagePath: 'assets/images/yummerz 1.png',
                        title: AppText.appMotive1,
                      ),
                      SplashPage(
                        imagePath: 'assets/images/yummerz 2.png',
                        title: AppText.appMotive2,
                      ),
                      SplashPage(
                        imagePath: 'assets/images/yummerz 3.png',
                        title: AppText.appMotive3,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _pageController.animateToPage(
                  _currentPage + 1,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 270,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(57),
                      topRight: Radius.circular(57),
                    ),
                    color: Color(0xFF277BC0),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildDotIndicator(0),
                          buildDotIndicator(1),
                          buildDotIndicator(2),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        _descriptions[_currentPage + 0],
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 20),
                      if (_currentPage < 2)
                        ElevatedButton(
                          onPressed: () {
                            _pageController.animateToPage(
                              _currentPage + 1,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF6CEDFF),
                            minimumSize: const Size(269, 52),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text('Next',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              )),
                        ),
                      if (_currentPage == 2)
                        Padding(
                          padding: const EdgeInsets.only(top: 45),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Categories(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF6CEDFF),
                              minimumSize: const Size(269, 52),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const Text('Get Started',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                )),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDotIndicator(int index) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      width: 10.0,
      height: 10.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentPage == index
            ? const Color(0xFF6CEDFF)
            : const Color(0xFFAB8B0A),
      ),
    );
  }
}

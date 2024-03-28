import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meals_app/widget/category_container.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xFFFFCC00),
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      backgroundColor: const Color(0xFFFFCC00),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(physics: const BouncingScrollPhysics(),
             children: [
              Image.asset(
                'assets/images/yummersLogo 1.png',
                height: 110,
              ),
              const Text('What to eat?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF277BC0),
                      fontSize: 24,
                      fontWeight: FontWeight.w200)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 34,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8, left: 8, bottom: 8),
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 6),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Color(0xFF868686),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.filter_alt),
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left:8, top: 8,bottom:5),
                child: Text('Suggested',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
                )),
              ),
              SizedBox(
                height: 123,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    CategoryContainer(
                        imagePath: 'assets/images/Rectangle 4.png'),
                    CategoryContainer(
                        imagePath: 'assets/images/Rectangle 5.png'),
                    CategoryContainer(
                        imagePath: 'assets/images/Rectangle 6.png'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left:8, top: 8,bottom:5),
                child: Text('Filipino Foods',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
                )),
              ),
              SizedBox(
                height: 123,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    CategoryContainer(
                        imagePath: 'assets/images/Rectangle 7.png'),
                    CategoryContainer(
                        imagePath: 'assets/images/Rectangle 8.png'),
                    CategoryContainer(
                        imagePath: 'assets/images/Rectangle 6.png'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left:8, top: 8,bottom:5),
                child: Text('Your Favorites',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
                )),
              ),
              SizedBox(
                height: 123,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    CategoryContainer(
                        imagePath: 'assets/images/Rectangle 7.png'),
                    CategoryContainer(
                        imagePath: 'assets/images/Rectangle 8.png'),
                    CategoryContainer(
                        imagePath: 'assets/images/Rectangle 6.png'),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

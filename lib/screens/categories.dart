import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meals_app/widget/maindrawer.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key});

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
      appBar: AppBar(backgroundColor: const Color(0xFFFFCC00)),
      drawer: const MainDrawer(),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
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
                 fontWeight: FontWeight.w200 
                )),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 140,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        Container(
                          height: 140,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 140,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        Container(
                          height: 140,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 140,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        Container(
                          height: 140,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}

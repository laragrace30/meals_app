import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String imagePath;

  const CategoryContainer({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.blue, 
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}

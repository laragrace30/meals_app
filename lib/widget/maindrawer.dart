import 'package:flutter/material.dart';
import 'package:meals_app/widget/app_drawer.dart';


class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          AppDrawer(),
          // MainDrawerItem(
          //     icon: Icons.restaurant_outlined,
          //     title: "Meals",
          //     identifier: "meals",
          //     onDrawerItemSelected: onDrawerItemSelected),
          // MainDrawerItem(
          //     icon: Icons.settings,
          //     title: "Filters",
          //     identifier: "filter",
          //     onDrawerItemSelected: onDrawerItemSelected),
        ],
      ),
    );
  }
}
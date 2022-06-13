import 'package:flutter/material.dart';
import 'package:frontend/controllers/app_controller.dart';
import 'package:frontend/pages/home/home_body.dart';
import 'package:frontend/pages/home/news_body.dart';
import 'package:frontend/pages/home/notifications_body.dart';
import 'package:frontend/pages/home/profile_body.dart';
import 'package:frontend/widgets/cart_iconbutton_widget.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetBuilder<AppController>(
          init: AppController(),
          builder: (controller) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('E-Commerce'),
                actions: const [
                  // if loged in, we can add the cart icon here
                  // if not login show login button here
                  CartIconButton()
                ],
              ),
              // body content
              body: IndexedStack(
                index: controller.navigationIndex.value,
                children: const [
                  HomeBody(),
                  NewsBody(),
                  NotificationBody(),
                  ProfileBody(),
                ],
              ),
              // Navigation bottom bar
              bottomNavigationBar: BottomNavigationMenu(controller: controller),
            );
          }),
    );
  }
}

class BottomNavigationMenu extends StatelessWidget {
  const BottomNavigationMenu({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final AppController controller;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: controller.navigationIndex.value,
      onDestinationSelected: (value) => controller.setNavigationIndex(index: value),
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home),
          selectedIcon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.star),
          selectedIcon: Icon(Icons.star_outlined),
          label: 'New Items',
        ),
        NavigationDestination(
          icon: Icon(Icons.notifications),
          selectedIcon: Icon(Icons.notifications_outlined),
          label: 'Notifications',
        ),
        NavigationDestination(
          icon: Icon(Icons.account_circle),
          selectedIcon: Icon(Icons.account_circle_outlined),
          label: 'Profile',
        ),
      ],
    );
  }
}

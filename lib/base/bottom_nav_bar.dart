import 'package:book_ticket/controller/bottom_nav_controller.dart';
import 'package:book_ticket/screens/home/home_screen.dart';
import 'package:book_ticket/screens/profile/profile.dart';
import 'package:book_ticket/screens/search/search_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screens/ticket/ticket_screen.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  //dependency injection
  final BottomNavController controller = Get.put(BottomNavController());


 //list is iterated using index
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];



  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Scaffold(

        body: appScreens[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.onItemTapped,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526400),
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),

              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),

              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),

              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Tickets",
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),

              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile",
            ),
          ],
        ),
      );
    });
  }
}

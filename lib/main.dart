import 'package:book_ticket/screens/all_tickets.dart';
import 'package:book_ticket/screens/home/all_hotels.dart';
import 'package:book_ticket/screens/hotel_details.dart';
import 'package:book_ticket/screens/ticket/ticket_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'base/bottom_nav_bar.dart';
import 'base/utils/all_json.dart';

void main() {

  runApp(const MyApp());

}

class  TestClass{
  late int x;
  late int y;

  TestClass({required this.x, required this.y});
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        AppRoutes.homePage:(context) => BottomNavBar(),
        AppRoutes.allTickets: (context) =>AllTickets(),
        AppRoutes.ticketScreen:(context)=> const TicketScreen(),
        AppRoutes.allHotels:(context)=> const AllHotels(),
        AppRoutes.hotelDetail:(context)=> const HotelDetails(),

      },
    );
  }
}

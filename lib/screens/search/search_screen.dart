import 'package:book_ticket/base/res/styles/app_styles.dart';
import 'package:book_ticket/screens/search/widgets/app_text_icon.dart';
import 'package:book_ticket/screens/search/widgets/app_ticket_tabs.dart';
import 'package:book_ticket/screens/search/widgets/find_tickets.dart';
import 'package:book_ticket/screens/search/widgets/ticket_promotion.dart';
import 'package:flutter/material.dart';

import '../../base/utils/all_json.dart';
import '../../base/widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 40,),
          Text("What are\n you looking for?", style: AppStyles.headLineStyle1.copyWith(
            fontSize:35
          )),
          SizedBox(height: 20,),
          const AppTicketTabs(
            firstTab: "All tickets",
            secondTab: "Hotels",
          ),
          SizedBox(height: 25),
          const AppTextIcon(icon: Icons.flight_takeoff_rounded, text: "Departure",),
          const SizedBox(height: 20,),
          const AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival",),
          const SizedBox(height: 25,),
          const FindTickets(),
          const SizedBox(height: 40,),
          AppDoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View All',
            func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
          ),
          const SizedBox(height: 15,),
          const TicketPromotion(),
        ],),
    );
  }
}

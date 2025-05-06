import 'package:book_ticket/base/widgets/app_double_text.dart';
import 'package:book_ticket/base/widgets/ticket_view.dart';
import 'package:book_ticket/screens/home/widgets/hotel.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../../base/res/media.dart';
import '../../base/res/styles/app_styles.dart';
import '../../base/utils/all_json.dart';
import '../../base/widgets/heading_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: AppStyles.headLineStyle3),
                        const SizedBox(height: 5),
                        HeadingText(text: "Book Tickets", isColor: false,),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: const Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View All',
                  func:
                      () => Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:
                        ticketList
                            .map(
                              (singleTicket) =>
                                  GestureDetector(
                                      onTap: (){
                                        var index = ticketList.indexOf(singleTicket);
                                        Navigator.pushNamed(context, AppRoutes.ticketScreen,
                                            arguments: {"index" :index}
                                        );
                                      },
                                      child: TicketView(ticket: singleTicket)),
                            )
                            .toList(),
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View All',
                  func: () {
                    Navigator.pushNamed(context, AppRoutes.allHotels);
                  },
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:
                        hotelList
                            .take(2)
                            .map((singleHotel) => GestureDetector(
                              onTap: (){
                                var index = hotelList.indexOf(singleHotel);
                                Navigator.pushNamed(context, AppRoutes.hotelDetail, arguments: {
                                  "index":index
                                });
                              },
                            child: Hotel(hotel: singleHotel)))
                            .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

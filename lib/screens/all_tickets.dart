import 'package:book_ticket/base/utils/all_json.dart';
import 'package:book_ticket/base/widgets/ticket_view.dart';
import 'package:flutter/material.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("All Tickets"),
        ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList.map((singleTicket) =>
                  GestureDetector(
                    onTap: (){
                      var index = ticketList.indexOf(singleTicket);
                      Navigator.pushNamed(context, AppRoutes.ticketScreen,
                      arguments: {"index" :index}
                      );
                    },
                    child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: TicketView(ticket: singleTicket, wholeScreen: true,)),
                  )).toList(),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:book_ticket/base/res/styles/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.FindTicket
      ),child: Center(child: Text("find tickets", style: AppStyles.textStyle.copyWith(color: Colors.white))),
    );
  }
}

import 'package:book_ticket/base/res/styles/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppTextIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white

      ),
      child: Row(
        children: [
          Icon(icon, color: AppStyles.planeColor,),
          SizedBox(width: 10,),
          Text(text, style: AppStyles.textStyle,)
        ],
      ),
    );
  }
}

import "package:bookticket/utils/app_layout.dart";
import "package:flutter/material.dart";

class AppTicketTabs extends StatelessWidget {
  final String text1;
  final String text2;
  const AppTicketTabs({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding:EdgeInsets.all(3.5),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color:Color(0xFFF4F6FD),

      ),

      child: Row(
        children: [
          Container(
            width:size.width * .44,
            padding: EdgeInsets.symmetric(vertical: 7),
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.horizontal( left: Radius.circular(50)),
              color:Colors.white,

            ),
            child: Center(child: Text(text1)),
          ),
          Container(
            width:size.width * .44,
            padding: const EdgeInsets.symmetric(vertical: 7),
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.horizontal( right: Radius.circular(50)),
              color:Colors.transparent,

            ),
            child: Center(child: Text(text2)),
          )
        ],
      ),
    );
  }
}

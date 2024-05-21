import "package:barcode_widget/barcode_widget.dart";
import "package:bookticket/components/app_column_layout.dart";
import "package:bookticket/components/layout_builder_widget.dart";
import "package:bookticket/components/ticket_view.dart";
import "package:bookticket/screens/tickets_tabs.dart";
import "package:bookticket/utils/app_info_list.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:gap/gap.dart";

import "../utils/app_style.dart";

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            children: [
              Gap(40),
              Text("Tickets", style: Styles.headlineStyle1,),
              const AppTicketTabs(text1: "Upcoming", text2: "Previous"),
              Gap(20),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(ticket: ticketList[0],isColor: true,),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child:  Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: "Flutter DB", secondText: "Passenger", alignment: CrossAxisAlignment.start, isColor: false,),
                        AppColumnLayout(firstText: "5221 456869", secondText: "Passport", alignment: CrossAxisAlignment.end,  isColor:false),
                      ],
                    ),
                    Gap(20),
                    AppLayoutBuilder(sections: 15, isColor: false,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: "364738 5647384848", secondText: "Number of E-Tickets", alignment: CrossAxisAlignment.start, isColor: false,),
                        AppColumnLayout(firstText: "B2SG2B", secondText: "Booking code", alignment: CrossAxisAlignment.end,  isColor:false),
                      ],
                    ),
                    Gap(20),
                    AppLayoutBuilder(sections: 15, isColor: false,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa_card.png", scale: 11,),
                                Text(" *** 2462", style: Styles.headlineStyle3,)
                              ],
                            ),
                            Text("Payment method", style: Styles.headlineStyle4,)
                          ],

                        ),
                        AppColumnLayout(firstText: "\$249,99", secondText: "Price", alignment: CrossAxisAlignment.end,  isColor:false),
                      ],


                    ),
                    const Gap(1),

                  ],
                )

              ),

              // bar code
              Container(

                decoration: const BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                  )
                ),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  padding: const  EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: "https://github.com/martinovovo",
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),

              Gap(20),

              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(ticket: ticketList[0]),
              ),





            ],
          ),
          Positioned(
            left: 22,
            top: 295,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),

              ),
              child: CircleAvatar(
                maxRadius: 5,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: 22,
            top: 295,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),

              ),
              child: CircleAvatar(
                maxRadius: 5,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}

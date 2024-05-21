import "package:bookticket/components/icon_text_widget.dart";
import "package:bookticket/screens/tickets_tabs.dart";
import "package:bookticket/utils/app_layout.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";

import "../components/double_text_widget.dart";
import "../utils/app_style.dart";
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text("What are \nyou looking for ?", style:Styles.headlineStyle1.copyWith(fontSize: 35)),
          const Gap(20),
          const AppTicketTabs(text1: "Airline tickets", text2: "Hotels"),
          const Gap(25),
          const AppIconText( icon: Icons.flight_takeoff_rounded, text: "Departure",),
          const Gap(15),
          const AppIconText( icon: Icons.flight_land_rounded, text: "Arrival",),
          const Gap(25),
          // find ticket button
          Container(
            padding:const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            decoration: BoxDecoration(
              color:const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Center(
              child: Text("Find tickets",style: Styles.textStyle.copyWith(color: Colors.white, fontSize: 20),),
            ),
          ),
          const Gap(40),
          const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "Views all"),
          Row(
            children: [
              Container(
                height: 454,
                width: size.width*0.42,
                padding:const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1
                    )
                  ]

                ),

                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/ori4.jpg")
                        ),
                      ),
                    ),
                    const Gap(15),
                    Text("20% discount on the early booking of this flight. Don't miss.", style: Styles.headlineStyle2,)
                  ],
                ),
              ),
              const Gap(5),
              Column(
                children: [
                Stack(
                  children: [
                    Container(
                        width: size.width * 0.44,
                        height: 280,
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        decoration: BoxDecoration(
                          color: Color(0xFf3ABBBB),
                          borderRadius: BorderRadius.circular(18),

                        ),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount \n for survey", style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                            Gap(10),
                            Text("Take the survey about our service and get discount \n for survey", style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white),),

                          ],
                        )

                    ),
                    Positioned(
                        right:  -45,
                        top:-40,
                        child: Container(
                      padding: const EdgeInsets.all(30) ,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 18, color: Color(0xFF189999)),
                          color: Colors.transparent
                      ),
                    )
                    )
                  ],
                ),
                  const Gap(15),
                  Container(
                    width: size.width * 0.44,
                    height: 174,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 45),
                    decoration: BoxDecoration(
                      color: Color(0xFFEC6545),
                      borderRadius: BorderRadius.circular(18),


                  ),
                    child: Column(
                      children:[
                        Text("Take love", style: Styles.headlineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),),
                        Gap(5),
                        RichText(text: TextSpan(
                          children: [
                            TextSpan(
                              text: '😍',
                              style:TextStyle(fontSize: 18)
                            ),
                            TextSpan(
                              text:'🥰',
                              style: TextStyle(fontSize:20)
                            ),
                            TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize: 18)
                            )
                          ]
                        ))
                      ]
                    ),
                  )
                ],
              )
            ],
          )

        ],
      )
    );
  }
}

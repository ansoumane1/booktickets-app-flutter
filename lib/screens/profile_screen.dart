import "package:bookticket/components/app_column_layout.dart";
import "package:bookticket/components/layout_builder_widget.dart";
import "package:bookticket/utils/app_style.dart";
import "package:fluentui_icons/fluentui_icons.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";

class ProfileScreen extends StatelessWidget {
  const ProfileScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          children: [
            const Gap(40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  width: 80,
                  padding: EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                      fit: BoxFit.fill
                    )
                  ),
                ),
                const Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Book Tickets", style: Styles.headlineStyle1,),
                    const Gap(2),
                    Text("New York", style: TextStyle(fontSize: 14, fontWeight:FontWeight.w500, color: Colors.grey.shade500)),
                    const Gap(8),
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFEF4F3),
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Row(
                        children: [
                         Container(
                           padding: const EdgeInsets.all(4),
                           decoration: const BoxDecoration(
                             color: Color(0xFF5266799),
                             shape: BoxShape.circle

                           ),
                           child: const Icon(FluentSystemIcons.ic_fluent_shield_filled, size: 15, color: Colors.white,),
                         ),
                          const Gap(5),
                          const Text("Premium status", style: TextStyle(color: Color(0xFF5266799), fontWeight: FontWeight.w600),),
                          const Gap(5),
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                        onTap: (){
                          print("you tapped me");
                        },
                        child: Text("Edit", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500),)
                    ),
                  ],
                ),
             ]
              ),
            const Gap(10),
            Divider(color: Colors.grey.shade300,),

            Stack(
                children:[
                  Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color:Styles.primaryColor,
                        borderRadius: BorderRadius.circular(18)
                    ),


                  ),
                  Positioned(
                    top: -40,
                    right: -45,
                    child: Container(
                     padding: const EdgeInsets.all(30),

                      decoration:  BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(width: 18, color:Color(0xFF264CD2)),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: Colors.white,
                          child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: Styles.primaryColor, size: 27,),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("You've got a new award", style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                            Text("you have 95 flights in a year", style: Styles.headlineStyle4.copyWith(fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9)),),
                          ],
                        )
                      ],
                    ),
                  ),
                ]
            ),
            const Gap(25),
            Text("Accumulated miles", style: Styles.headlineStyle2,),
             Container(
               padding: const EdgeInsets.symmetric(horizontal: 15),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(18),
                 color:Styles.bgColor,
                 boxShadow: [
                   BoxShadow(
                     color: Colors.grey.shade200,
                     blurRadius: 20,
                     spreadRadius: 5,
                   )
                 ]

               ),
              child:Column(
                children: [
                  const Gap(15),
                  Text("192802", style: TextStyle(fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600),),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Miles accrued", style: Styles.headlineStyle4.copyWith(fontSize: 16),),

                      Text("11 June 2024", style: Styles.headlineStyle4.copyWith(fontSize: 16),),
                    ],
                  ),
                  const Gap(4),
                  Divider(color: Colors.grey.shade300,),
                  const Gap(4),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: "23 042", secondText: "Miles", alignment: CrossAxisAlignment.start, isColor: false,),
                      AppColumnLayout(firstText: "Airline CO", secondText: "Received from", alignment: CrossAxisAlignment.center, isColor: false,),
                     
                    ],
                  ),
                  const Gap(12),
                  const AppLayoutBuilder(sections: 12, isColor: false,),
                  const Gap(12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: "24", secondText: "Miles", alignment: CrossAxisAlignment.end, isColor: false,),
                      AppColumnLayout(firstText: "McDonald's", secondText: "Received from", alignment: CrossAxisAlignment.end, isColor: false,),
                    ],
                  ),
                  const Gap(12),
                  const AppLayoutBuilder(sections: 12, isColor: false,),
                  const Gap(12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: "52 340", secondText: "Miles", alignment: CrossAxisAlignment.end, isColor: false,),
                      AppColumnLayout(firstText: "McDonald's", secondText: "Received from", alignment: CrossAxisAlignment.end, isColor: false,),
                    ],
                  ),
                  const Gap(12),
                  const AppLayoutBuilder(sections: 12, isColor: false,),
                  const Gap(10),
                  InkWell(
                    onTap: () => print("you tapped me"),
                    child: Text("How to get more miles", style: Styles.textStyle.copyWith(
                      color: Styles.primaryColor,
                      fontWeight: FontWeight.w500
                    ),),
                  )
                ],
              )
            )

              ]
            )
        )
    );
  }
}

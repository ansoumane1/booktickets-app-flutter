import "package:bookticket/components/double_text_widget.dart";
import "package:bookticket/components/hotel_screen.dart";
import "package:bookticket/components/ticket_view.dart";
import "package:bookticket/utils/app_info_list.dart";
import "package:bookticket/utils/app_style.dart";
import "package:fluentui_icons/fluentui_icons.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:gap/gap.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    const Gap(40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Good Morning", style: Styles.headlineStyle3),
                            const Gap(5),
                            Text("Book Tickets", style: Styles.headlineStyle1)
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage(
                                      "assets/images/ori_logo.png"))),
                        )
                      ],
                    ),
                    const Gap(25),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                              FluentSystemIcons.ic_fluent_search_square_filled,
                              color: Color(0xFFBFC205)),
                          Text("Search", style: Styles.headlineStyle4),
                        ],
                      ),
                    ),
                    const Gap(40),
                    const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "Views all")
                  ],
                )),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children:ticketList.map((singleticket) => TicketView(ticket: singleticket)).toList()
              ),
            ),
            const Gap(15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const AppDoubleTextWidget(bigText: "Hotels", smallText: "Views all")
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: hotelList
                    .map((singlehotel) => HotelScreen(hotel: singlehotel))
                    .toList(),
              ),
            )
          ],
        ));
  }
}

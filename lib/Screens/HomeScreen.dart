import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ticket_app/Screens/hotel_screen.dart';
import 'package:ticket_app/Screens/ticket_view.dart';
import 'package:ticket_app/Utility/app_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedTextKit(
                          isRepeatingAnimation: false,
                          animatedTexts: [
                            TypewriterAnimatedText(
                              'Welcome, Mr. Siam',
                              textStyle: Styles.headLineStyle3,
                              speed: const Duration(milliseconds: 100),
                            ),
                          ]),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Book Your Tickets',
                        style: Styles.headLineStyle1,
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/rocket.png"),
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              // Container(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       color: Colors.white),
              //   child: Row(children: [
              //     const Icon(
              //       FluentSystemIcons.ic_fluent_search_regular,
              //       color: Colors.blue,
              //     ),
              //     const SizedBox(
              //       width: 5.0,
              //     ),
              //     Text(
              //       'Search Here and...',
              //       style: Styles.headLineStyle4,
              //     ),
              //   ]),
              // ),
              TextField(
                scrollPadding: const EdgeInsets.all(10),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Search',
                  hintStyle: Styles.headLineStyle4,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Flight',
                    style: Styles.headLineStyle2,
                  ),
                  Text(
                    'See More',
                    //style: Styles.textColor,
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(children: const [
                  TicketView(),
                  TicketView(),
                  TicketView(),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hotels',
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () {
                        print('The button is clicked');
                      },
                      child: Text(
                        'See All',
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20),
                child: Row(children: const [
                  HotelScreen(),
                  HotelScreen(),
                  HotelScreen()
                ]),
              )
            ]),
          )
        ],
      ),
    );
  }
}

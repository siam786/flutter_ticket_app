import 'package:flutter/material.dart';
import 'package:ticket_app/Utility/app_layout.dart';
import 'package:ticket_app/Utility/app_style.dart';

class HotelScreen extends StatelessWidget {
  // final Map<String, dynamic> hotel;
  const HotelScreen({
    Key? key, required Map<String, dynamic> hotel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 2,
              spreadRadius: 1),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20.0),
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage("assets/images/hotel-mountain.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Dhaka',
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          Text(
            'Rangpur',
            style: Styles.headLineStyle4.copyWith(color: Colors.white),
          ),
          Text(
            '100tk perday',
            style: Styles.headLineStyle1.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

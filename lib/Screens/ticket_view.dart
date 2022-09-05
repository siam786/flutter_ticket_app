import 'package:flutter/material.dart';
import 'package:ticket_app/Utility/app_layout.dart';
import 'package:ticket_app/Utility/app_style.dart';
import 'package:ticket_app/widget/circle_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(21),
            topRight: Radius.circular(21),
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          Row(
            children: [
              Text(
                'Dhaka',
                style: Styles.headLineStyle3.copyWith(color: Colors.white),
              ),
              const Spacer(),
              const CircularBorder(),
              const Spacer(),
              const CircularBorder(),
              const Spacer(),
              Text(
                'CTG',
                style: Styles.headLineStyle3.copyWith(color: Colors.white),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

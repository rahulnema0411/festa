import 'package:festa/views/ticket_view/widgets/ticket_small.dart';
import 'package:flutter/material.dart';

class TicketStack extends StatelessWidget {
  final int ticketCount;

  const TicketStack({super.key, required this.ticketCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      height: getWidgetHeight(),
      child: Stack(
        children: getStackedTickets(),
      ),
    );
  }

  List<Widget> getStackedTickets() {
    List<Widget> stackedWidgets = [];

    stackedWidgets.add(const TicketSmall());

    for (int i = 1; i < ticketCount; i++) {
      stackedWidgets.add(
        Positioned(top: i * 60, child: const TicketSmall()),
      );
    }

    return stackedWidgets;
  }

  double getWidgetHeight() {
    double height = 190.0;

    for (int i = 1; i < ticketCount; i++) {
      height += 70.0;
    }

    return height;
  }
}

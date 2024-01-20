import 'package:festa/views/ticket_view/widgets/ticket_stack.dart';
import 'package:flutter/material.dart';

class HistoryEventsView extends StatelessWidget {
  const HistoryEventsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TicketStack(ticketCount: 3),
          TicketStack(ticketCount: 2),
          TicketStack(ticketCount: 4),
        ],
      ),
    );
  }
}

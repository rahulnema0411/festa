import 'package:festa/views/ticket_view/widgets/ticket_stack.dart';
import 'package:flutter/material.dart';

/// A view displaying historical events with a stack of tickets.
class HistoryEventsView extends StatelessWidget {
  const HistoryEventsView({Key? key}) : super(key: key);

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

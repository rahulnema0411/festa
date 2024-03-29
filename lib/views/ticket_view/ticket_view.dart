import 'package:festa/constants/color_constants.dart';
import 'package:festa/constants/style_constants.dart';
import 'package:festa/views/ticket_view/views/history_events_view.dart';
import 'package:festa/views/ticket_view/views/upcoming_events_view.dart';
import 'package:flutter/material.dart';

/// The main ticket view that displays upcoming and historical events.
class TicketView extends StatefulWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  late TicketViewState state;

  @override
  void initState() {
    super.initState();
    state = TicketViewState.upcoming;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          title: Text(
            'Your Tickets',
            style: StyleConstants.displayLarge,
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: state == TicketViewState.upcoming
                        ? ColorConstants.secondaryRed
                        : ColorConstants.primaryGreyDark,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      state = TicketViewState.upcoming;
                    });
                  },
                  child: Text(
                    'Upcoming',
                    style: StyleConstants.buttonNormal,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: state == TicketViewState.history
                        ? ColorConstants.secondaryRed
                        : ColorConstants.primaryGreyDark,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      state = TicketViewState.history;
                    });
                  },
                  child: Text(
                    'History',
                    style: StyleConstants.buttonNormal,
                  ),
                )
              ],
            ),
            Expanded(
              child: getView(),
            ),
          ],
        ),
      ),
    );
  }

  /// Returns the appropriate view based on the selected [state].
  Widget getView() {
    switch (state) {
      case TicketViewState.history:
        return const HistoryEventsView();
      case TicketViewState.upcoming:
        return const UpcomingEventsView();
    }
  }
}

/// Enum representing the different states of the [TicketView].
enum TicketViewState { history, upcoming }

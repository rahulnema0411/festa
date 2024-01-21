import 'package:festa/constants/color_constants.dart';
import 'package:festa/constants/style_constants.dart';
import 'package:festa/views/ticket_view/widgets/ticket.dart';
import 'package:flutter/material.dart';

/// A view displaying upcoming events with a single ticket and download/share buttons.
class UpcomingEventsView extends StatelessWidget {
  const UpcomingEventsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Display a single ticket for the upcoming event.
          const Ticket(),
          // Row containing download and share buttons.
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstants.secondaryRed,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.file_download_outlined,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'Download',
                        style: StyleConstants.buttonNormal,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstants.primaryGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {
                  // Add logic for handling share button press.
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.ios_share,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'Share',
                        style: StyleConstants.buttonNormal,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

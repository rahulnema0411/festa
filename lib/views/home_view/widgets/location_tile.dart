import 'package:festa/constants/color_constants.dart';
import 'package:festa/constants/style_constants.dart';
import 'package:flutter/material.dart';

/// Represents a tile for displaying a location with an icon and title.
class LocationTile extends StatelessWidget {
  final String title;

  const LocationTile({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 82,
        height: 82,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(
            color: ColorConstants.primaryGrey,
            width: 2.0,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon representing a location (e.g., grass icon)
            const Icon(Icons.grass_outlined),
            const SizedBox(
              height: 8.0,
            ),
            // Text displaying the location title
            Text(
              title,
              style: StyleConstants.readTextWhiteSmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

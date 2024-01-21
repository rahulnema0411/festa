import 'package:festa/views/home_view/widgets/location_tile.dart';
import 'package:flutter/material.dart';

/// Widget for displaying location suggestions, allowing the user to detect their location
/// and presenting a list of suggested locations using [LocationTile].
class ChooseSuggestions extends StatelessWidget {
  const ChooseSuggestions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row for detecting user location
        Row(
          children: [
            Icon(Icons.send),
            SizedBox(
              width: 8.0,
            ),
            Text('Detect my location'),
          ],
        ),
        SizedBox(
          height: 4.0,
        ),
        // Header for location suggestions
        Text('Suggestions'),
        SizedBox(
          height: 4.0,
        ),
        // Scrollable row of suggested locations using LocationTile
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              LocationTile(title: 'Delhi'),
              LocationTile(title: 'Bengaluru'),
              LocationTile(title: 'Mumbai'),
              LocationTile(title: 'Hyderabad'),
              LocationTile(title: 'Chennai'),
              LocationTile(title: 'Kolkata'),
              LocationTile(title: 'Noida'),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:festa/views/home_view/widgets/location_tile.dart';
import 'package:flutter/material.dart';

class ChooseSuggestions extends StatelessWidget {
  const ChooseSuggestions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        Text('Suggestions'),
        SizedBox(
          height: 4.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              LocationTile(title: 'Dehli'),
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

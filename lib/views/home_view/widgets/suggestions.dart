import 'package:festa/views/home_view/models/autcomplete_prediction.dart';
import 'package:flutter/material.dart';

/// Widget for displaying a list of location suggestions.
class Suggestions extends StatelessWidget {
  final List<Place> places;

  const Suggestions({
    Key? key,
    required this.places,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List to store the suggestion widgets
    List<Widget> suggestionList = [];

    // Iterate through the list of places to create suggestion widgets
    for (Place place in places) {
      suggestionList.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            // Displaying a shortened version of the place description if it's too long
            place.description.length > 36
                ? '${place.description.substring(0, 36)}...'
                : place.description,
          ),
        ),
      );
    }

    // Limit the number of suggestions to display (max 4)
    if (suggestionList.length > 4) {
      suggestionList = suggestionList.sublist(0, 4);
    }

    // Display the list of suggestions in a column
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: suggestionList,
    );
  }
}

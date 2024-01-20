import 'package:festa/views/home_view/models/autcomplete_prediction.dart';
import 'package:flutter/material.dart';

class Suggestions extends StatelessWidget {
  final List<Place> places;

  const Suggestions({
    super.key,
    required this.places,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> suggestionList = [];

    for (Place place in places) {
      suggestionList.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(place.description.length > 36
              ? '${place.description.substring(0, 36)}...'
              : place.description),
        ),
      );
    }

    if (suggestionList.length > 4) {
      suggestionList = suggestionList.sublist(0, 4);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: suggestionList,
    );
  }
}

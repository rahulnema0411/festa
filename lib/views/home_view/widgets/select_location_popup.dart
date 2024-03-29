import 'dart:convert';

import 'package:festa/constants/color_constants.dart';
import 'package:festa/constants/string_constants.dart';
import 'package:festa/helper/api_helper.dart';
import 'package:festa/views/home_view/models/autcomplete_prediction.dart';
import 'package:festa/views/home_view/widgets/choose_suggestions.dart';
import 'package:festa/views/home_view/widgets/suggestions.dart';
import 'package:flutter/material.dart';

/// Widget for selecting a location through a popup dialog.
class SelectLocationPopup extends StatefulWidget {
  const SelectLocationPopup({
    Key? key,
  }) : super(key: key);

  @override
  State<SelectLocationPopup> createState() => _SelectLocationPopupState();
}

class _SelectLocationPopupState extends State<SelectLocationPopup> {
  List<Place> places = [];

  /// Function to perform place autocomplete based on the user's input query.
  void placeAutocomplete(String query) async {
    Uri uri = Uri.https(
      'maps.googleapis.com',
      'maps/api/place/autocomplete/json',
      {
        "input": query,
        "key": apiKey,
      },
    );

    String? response = await APIHelper.fetchUrl(uri);

    if (response != null) {
      PlaceSuggestions suggestions =
          PlaceSuggestions.fromJson(jsonDecode(response));

      // Update the state with the retrieved place suggestions
      setState(() {
        places = suggestions.places;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: ColorConstants.primaryGreyDarker,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Container(
        height: 300,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header row with the title and close button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Choose your location'),
                IconButton(
                  onPressed: () {
                    // Close the location selection dialog
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                )
              ],
            ),
            // TextField for user input with autocomplete functionality
            TextField(
              onChanged: (value) {
                // Trigger place autocomplete based on user input
                placeAutocomplete(value);
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black,
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            // Display either choose suggestions or actual suggestions based on user input
            places.isEmpty
                ? const ChooseSuggestions()
                : Suggestions(
                    places: places,
                  ),
          ],
        ),
      ),
    );
  }
}

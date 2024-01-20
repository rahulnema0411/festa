class PlaceSuggestions {
  final List<Place> places;

  PlaceSuggestions({required this.places});

  factory PlaceSuggestions.fromJson(Map<String, dynamic> json) {
    List<dynamic>? predictions = json['predictions'];
    if (predictions != null) {
      List<Place> placesList = predictions.map((prediction) {
        return Place.fromJson(prediction);
      }).toList();

      return PlaceSuggestions(places: placesList);
    } else {
      return PlaceSuggestions(places: []);
    }
  }
}

class Place {
  final String description;

  Place(this.description);

  Map<String, dynamic> toJson() {
    return {
      'description': description,
    };
  }

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(json['description']);
  }
}

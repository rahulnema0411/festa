class PlaceSuggestions {
  final List<Place> places;

  PlaceSuggestions({required this.places});

  factory PlaceSuggestions.fromJson(Map<String, dynamic> json) {
    var predictions = json['predictions'] as List<dynamic>? ?? [];
    List<Place> placesList =
        predictions.map((prediction) => Place.fromJson(prediction)).toList();
    return PlaceSuggestions(places: placesList);
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

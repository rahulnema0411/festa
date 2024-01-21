import 'package:festa/constants/style_constants.dart';
import 'package:flutter/material.dart';

/// Represents a tile for displaying an experience, combining an image and a title.
class ExperienceTile extends StatelessWidget {
  final String title;

  const ExperienceTile({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          // Background container with rounded corners and image
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              width: 82,
              height: 82,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              child: Image.network(
                'https://picsum.photos/200',
                width: 78.0,
                height: 78.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Positioned text at the bottom with the experience title
          Positioned(
            bottom: 8.0,
            left: 0.0,
            right: 0.0,
            child: Text(
              title,
              style: StyleConstants.readTextWhiteSmall,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

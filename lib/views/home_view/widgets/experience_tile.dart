import 'package:festa/constants/style_constants.dart';
import 'package:flutter/material.dart';

class ExperienceTile extends StatelessWidget {
  final String title;

  const ExperienceTile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
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
          Container(
            color: Colors.amber,
            child: Text(
              title,
              style: StyleConstants.readTextWhiteSmall,
            ),
          ),
        ],
      ),
    );
  }
}

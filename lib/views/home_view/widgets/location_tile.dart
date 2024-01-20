import 'package:festa/constants/color_constants.dart';
import 'package:festa/constants/style_constants.dart';
import 'package:flutter/material.dart';

class LocationTile extends StatelessWidget {
  final String title;

  const LocationTile({
    super.key,
    required this.title,
  });

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
            const Icon(Icons.grass_outlined),
            const SizedBox(
              height: 8.0,
            ),
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

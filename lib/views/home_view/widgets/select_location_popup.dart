import 'package:festa/constants/color_constants.dart';
import 'package:festa/views/home_view/widgets/location_tile.dart';
import 'package:flutter/material.dart';

class SelectLocationPopup extends StatelessWidget {
  const SelectLocationPopup({
    super.key,
  });

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Choose your location'),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close))
              ],
            ),
            TextField(
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
            const Row(
              children: [
                Icon(Icons.send),
                SizedBox(
                  width: 8.0,
                ),
                Text('Detect my location'),
              ],
            ),
            const Text('Suggestions'),
            const SingleChildScrollView(
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
        ),
      ),
    );
  }
}

import 'package:festa/constants/color_constants.dart';
import 'package:festa/constants/style_constants.dart';
import 'package:flutter/material.dart';

class TicketSmall extends StatelessWidget {
  const TicketSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: ClipPath(
        clipper: SmallTicketClipper(),
        child: Container(
          width: 404,
          height: 190,
          decoration: BoxDecoration(
            color: ColorConstants.primaryGreyDark,
            borderRadius: BorderRadius.circular(24.21),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          'https://picsum.photos/276/177',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mike Shinoda',
                            style: StyleConstants.readTextWhite,
                          ),
                          Text(
                            'India Tour 2023',
                            style: StyleConstants.readText,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.pin_drop_outlined,
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                '03-04-2023, 11:00am - 2:00pm',
                                style: StyleConstants.readTextWhite,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.pin_drop_outlined,
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                'Mumbai Stadium, Mumbai, India',
                                style: StyleConstants.readTextWhite,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Container(
                    height: 34,
                    width: double.infinity,
                    color: Colors.white,
                    child: const Center(
                      child: Text('Bar code here'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SmallTicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    for (int i = 0; i < 8; i++) {
      path.addOval(Rect.fromCircle(
          center: Offset(0, (((size.height - 30) / 8) * i) + 25), radius: 6.0));

      path.addOval(
        Rect.fromCircle(
            center: Offset(size.width, (((size.height - 30) / 8) * i) + 25),
            radius: 6.0),
      );
    }

    path.addOval(Rect.fromCircle(
        center: Offset(size.height, size.height), radius: 15.0));

    path.addOval(Rect.fromCircle(center: Offset(size.height, 0), radius: 15.0));

    path.fillType = PathFillType.evenOdd;
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

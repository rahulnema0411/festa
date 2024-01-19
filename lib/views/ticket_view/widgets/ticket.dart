import 'package:festa/constants/color_constants.dart';
import 'package:festa/constants/style_constants.dart';
import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 26.0),
      child: ClipPath(
        clipper: TicketClipper(),
        child: Container(
          width: double.infinity,
          height: 460,
          decoration: BoxDecoration(
            color: ColorConstants.primaryGreyDark,
            border: Border.all(
              color: ColorConstants.primaryGrey,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(24.21),
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius:
                                24.21, // Half of the desired width and height
                            backgroundColor: Colors
                                .transparent, // Set the background color to transparent for a circular avatar
                            child: ClipOval(
                              child: Image.network(
                                'https://picsum.photos/200',
                                width: 48.42,
                                height: 48.42,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Anuj Jain',
                                style: StyleConstants.displaySmall,
                              ),
                              Text(
                                'India Tour 2023',
                                style: StyleConstants.readTextSmall,
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Anuj Jain',
                            style: StyleConstants.readText,
                          ),
                          Text(
                            'India Tour 2023',
                            style: StyleConstants.readText,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    'https://picsum.photos/276/177',
                    width: 276,
                    height: 177,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: ColorConstants.primaryGrey,
                    borderRadius: BorderRadius.circular(24.21),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
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
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
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
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.airplane_ticket_outlined,
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              'Row: 2     Seats: 09,10',
                              style: StyleConstants.readTextWhite,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.airplane_ticket_outlined,
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              '10,000',
                              style: StyleConstants.readTextBig,
                            ),
                          ],
                        ),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    path.addOval(
        Rect.fromCircle(center: Offset(0, size.height / 2), radius: 21.0));

    path.addOval(
      Rect.fromCircle(
          center: Offset(size.width, size.height / 2), radius: 21.0),
    );
    path.fillType = PathFillType.evenOdd;
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

import 'package:festa/constants/color_constants.dart';
import 'package:festa/constants/style_constants.dart';
import 'package:festa/views/home_view/widgets/experience_tile.dart';
import 'package:festa/views/home_view/widgets/select_location_popup.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            _showPopup(context);
          },
          icon: Icon(
            Icons.pin_drop_rounded,
            color: ColorConstants.secondaryRed,
          ),
        ),
        title: Text(
          'Indira Nagar',
          style: StyleConstants.readTextSmall,
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hey James, Let\'s party',
                style: StyleConstants.readText,
              ),
              const SizedBox(
                height: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Pick your experience!',
                      style: StyleConstants.displaySmall,
                    ),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ExperienceTile(title: 'Techno'),
                        ExperienceTile(title: 'EDM'),
                        ExperienceTile(title: 'Jazz'),
                        ExperienceTile(title: 'Hip-Hop'),
                        ExperienceTile(title: 'Rock'),
                        ExperienceTile(title: 'Bollywood'),
                        ExperienceTile(title: 'Ladies Night'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const SelectLocationPopup();
      },
    );
  }
}

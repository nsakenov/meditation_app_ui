import 'package:flutter/material.dart';
import 'package:meditation_app_ui/widgets/search_bar.dart';
import 'package:meditation_app_ui/widgets/sessions_builder.dart';
import '../constants.dart';
import 'meditation_widget.dart';

class BodyDetailScreen extends StatelessWidget {
  const BodyDetailScreen({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.45,
          decoration: BoxDecoration(
            color: kBlueLightColor,
            image: DecorationImage(
              image: AssetImage('assets/images/meditation_bg.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * 0.05),
                  Text(
                    'Meditation',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '3-10 MIN Course',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: size.width *
                        0.6, //take 60% of total width of the screen
                    child: Text(
                        'Live happier and healthier by learning the fundamentals of meditation'),
                  ),
                  SizedBox(
                    width: size.width * 0.5,
                    child: SearchBar(),
                  ),
                  SessionsBuilder(),
                  SizedBox(height: 20),
                  Text(
                    'Mediation',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  MeditationWidget()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

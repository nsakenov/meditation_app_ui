import 'package:flutter/material.dart';
import 'package:meditation_app_ui/constants.dart';
import 'package:meditation_app_ui/widgets/search_bar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
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
                  Wrap(
                    spacing: 10,
                    runSpacing: 15,
                    children: [
                      SessionCard(
                        sessionNum: 1,
                        isDone: true,
                      ),
                      ...List.generate(
                        5,
                        (index) => SessionCard(
                          sessionNum: index + 1,
                          isDone: false,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  SessionCard({
    required this.sessionNum,
    this.isDone = false,
  });

  final int sessionNum;
  final bool isDone;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        width: constraint.maxWidth / 2 - 5,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              )
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                Container(
                  height: 42,
                  width: 43,
                  decoration: BoxDecoration(
                    color: isDone ? kBlueColor : Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: kBlueColor),
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    color: isDone ? Colors.white : kBlueColor,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Session $sessionNum',
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}

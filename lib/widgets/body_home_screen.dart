import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app_ui/detail_screen.dart';
import 'package:meditation_app_ui/widgets/search_bar.dart';
import 'category_card.dart';

class BodyHomeScreen extends StatelessWidget {
  const BodyHomeScreen({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.45, //45% of total height of screen
          decoration: BoxDecoration(
            color: Color(0xFFF5CEB8),
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: Color(0xFFF2BEA1),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/menu.svg',
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'Good Morning, Nurbol',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
                SearchBar(),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      CategoryCard(
                        svgSrc: 'assets/icons/Hamburger.svg',
                        title: 'Diet Recommendation',
                        press: () {},
                      ),
                      CategoryCard(
                        svgSrc: 'assets/icons/Excrecises.svg',
                        title: 'Kegel Exercises',
                        press: () {},
                      ),
                      CategoryCard(
                        svgSrc: 'assets/icons/Meditation.svg',
                        title: 'Meditation',
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailScreen();
                              },
                            ),
                          );
                        },
                      ),
                      CategoryCard(
                        svgSrc: 'assets/icons/yoga.svg',
                        title: 'Yoga',
                        press: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

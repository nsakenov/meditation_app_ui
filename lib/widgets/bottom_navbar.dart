import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app_ui/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 10,
      ),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            title: 'Today',
            press: () {},
            svgSrc: 'assets/icons/calendar.svg',
            isActive: true,
          ),
          BottomNavItem(
            title: 'All Exercises',
            press: () {},
            svgSrc: 'assets/icons/gym.svg',
          ),
          BottomNavItem(
            title: 'Settings',
            press: () {},
            svgSrc: 'assets/icons/Settings.svg',
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  BottomNavItem({
    required this.svgSrc,
    required this.title,
    required this.press,
    this.isActive = false,
  });

  final String svgSrc, title;
  final VoidCallback press;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgSrc,
              color: isActive ? kActiveIconColor : kTextColor),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}

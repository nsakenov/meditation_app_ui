import 'package:flutter/material.dart';
import '../constants.dart';

class SessionCard extends StatelessWidget {
  SessionCard({
    required this.sessionNum,
    this.isDone = false,
    required this.press,
  });

  final int sessionNum;
  final bool isDone;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        width: constraint.maxWidth / 2 - 5,
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
          ],
        ),
        child: Material(
          borderRadius: BorderRadius.circular(13),
          shadowColor: kShadowColor,
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: EdgeInsets.all(16),
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
        ),
      );
    });
  }
}

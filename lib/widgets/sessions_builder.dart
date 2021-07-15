import 'package:flutter/material.dart';
import 'package:meditation_app_ui/widgets/session_card.dart';

class SessionsBuilder extends StatelessWidget {
  const SessionsBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 15,
      children: [
        SessionCard(
          sessionNum: 1,
          isDone: true,
          press: () {},
        ),
        ...List.generate(
          5,
          (index) => SessionCard(
            sessionNum: index + 1,
            isDone: false,
            press: () {},
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meditation_app_ui/widgets/body_detail_screen.dart';
import 'package:meditation_app_ui/widgets/bottom_navbar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: BodyDetailScreen(size: size),
    );
  }
}

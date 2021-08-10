import 'package:flutter/material.dart';
import 'package:insta_clone_web/pages/home/widgets/responsive_app_bar.dart';

class HomePage extends StatelessWidget {
//const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 52),
        child: ResponsiveAppBar(),
      ),
    );
  }
}

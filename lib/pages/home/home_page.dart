import 'package:flutter/material.dart';
import 'package:insta_clone_web/pages/home/widgets/post_widget.dart';
import 'package:insta_clone_web/pages/home/widgets/responsive_app_bar.dart';
import 'package:insta_clone_web/pages/home/widgets/stories_list.dart';

class HomePage extends StatelessWidget {
//const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 52),
        child: ResponsiveAppBar(),
      ),
      backgroundColor: Colors.black87,
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: ListView(
            children: [
              StoriesList(),
              PostWidget(),
              PostWidget(),
              PostWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

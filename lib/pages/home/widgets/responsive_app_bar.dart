import 'package:flutter/material.dart';

class ResponsiveAppBar extends StatelessWidget {
//const ResponsiveAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1,
      title: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1000),
        child: Row(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                'Flutter',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'Billabong',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: 200,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 4),
              //padding: const EdgeInsets.only(right: 8),
              child: Row(
                children: [
                  Icon(Icons.search, size: 15),
                  const SizedBox(width: 4),
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

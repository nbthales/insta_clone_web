import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuAction extends StatelessWidget {
//const ResponsiveMenuAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: [
            Condition.smallerThan(name: TABLET),
          ],
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          ),
        ),
        const SizedBox(width: 4),
        IconButton(
          icon: Icon(Icons.home),
          onPressed: (){},
        ),
        const SizedBox(width: 4),
        IconButton(
          icon: Icon(Icons.send),
          onPressed: (){},
        ),
        const SizedBox(width: 4),
        IconButton(
          icon: Icon(Icons.favorite_border),
          onPressed: (){},
        ),
        const SizedBox(width: 16),
        CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              'https://media-exp1.licdn.com/dms/image/C4D03AQH8-W7raK7-gg/profile-displayphoto-shrink_800_800/0/1623848101428?e=1634169600&v=beta&t=Qra8vrT2HqqOnmJ0DFkt94rcGNjMHVoOJX_GOXxN5CE'
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
//const StoryCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(196, 46, 145, 1),
                Color.fromRGBO(249, 157, 76, 1),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft
            ),
          ),
          alignment: Alignment.center,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black87,
            ),
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 29,
              backgroundImage: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C4D03AQH8-W7raK7-gg/profile-displayphoto-shrink_800_800/0/1623848101428?e=1634169600&v=beta&t=Qra8vrT2HqqOnmJ0DFkt94rcGNjMHVoOJX_GOXxN5CE'
              ),
            ),
          ),
        ),
        Text(
          'nbthales',
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

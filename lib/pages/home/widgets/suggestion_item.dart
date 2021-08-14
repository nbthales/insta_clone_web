import 'package:flutter/material.dart';

class SuggestionItem extends StatelessWidget {
//const SuggestionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 5, 0, 5),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media-exp1.licdn.com/dms/image/C4D03AQH8-W7raK7-gg/profile-displayphoto-shrink_800_800/0/1623848101428?e=1634169600&v=beta&t=Qra8vrT2HqqOnmJ0DFkt94rcGNjMHVoOJX_GOXxN5CE'
            ),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'nbthales',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white
                  ),
                ),
                Text(
                  'Thales Terra',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: (){},
              child: Text(
                'Seguir',
                style: TextStyle(
                  color: Color(0xFF0396F6),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:insta_clone_web/pages/home/widgets/suggestion_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RightPanel extends StatelessWidget {
//const RightPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.largerThan(name: TABLET),
      ],
      child: Container(
        margin: const EdgeInsets.fromLTRB(35, 56, 20, 0),
        width: 300,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 29,
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
                          color: Colors.grey,
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
                      'Sair',
                      style: TextStyle(
                        color: Color(0xFF0396F6),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sugestões para você',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[500],
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: (){},
                    child: Text(
                      'Ver tudo',
                      style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 8),
            SuggestionItem(),
            SuggestionItem(),
            SuggestionItem(),
          ],
        ),
      ),
    );
  }
}

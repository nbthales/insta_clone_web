import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
//const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: desktop ? 16 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(
                      'https://media-exp1.licdn.com/dms/image/C4D03AQH8-W7raK7-gg/profile-displayphoto-shrink_800_800/0/1623848101428?e=1634169600&v=beta&t=Qra8vrT2HqqOnmJ0DFkt94rcGNjMHVoOJX_GOXxN5CE'
                  ),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Text(
                      'nbthales',
                      style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white
                      ),
                    ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.more_horiz_sharp,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Image.network(
              'https://scontent.fpoo2-1.fna.fbcdn.net/v/t1.6435-9/53548602_2042058892576922_783407669787492352_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_ohc=UpukaSw7OroAX8nLKCH&_nc_ht=scontent.fpoo2-1.fna&oh=6de726d0f7f2d5d9ba01a87e253762ed&oe=613D5F0A',
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.white,
                  onPressed: (){},
                  ),
                const SizedBox(width: 4),
                IconButton(
                  icon: Icon(Icons.messenger_outline),
                  color: Colors.white,
                  onPressed: (){},
                ),
                const SizedBox(width: 4),
                IconButton(
                  icon: Icon(Icons.send),
                  color: Colors.white,
                  onPressed: (){},
                ),
                Expanded(child: Container()),
                IconButton(
                  icon: Icon(Icons.bookmark_border),
                  color: Colors.white,
                  onPressed: (){},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Curtido por nbthales e outras 2 pessoas',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 8),
                Text(
                  'HÁ 1 HORA',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                )
              ],
            ),
          ),
          if(desktop) ... [
            Divider(
              color: Colors.white,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 0, 24),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                        hintText: 'Adicione um comentário...',
                        hintStyle: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ),
                  )
                ),
                FlatButton(
                  onPressed: (){},
                  textColor: Colors.blue,
                  child: Text('Publicar'),
                ),
              ],
            ),
          ]
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: const EdgeInsets.all(25),
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /*---imagem---*/
            Image.asset('images/image_1.png',),
            /*---Comentários---*/
            Transform.translate(
              offset: const Offset(9, 0),
              child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('We gonna go to build good memories',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 18))),
            ),
            //Menu
            Transform.translate(
              offset: const Offset(9, 0),
              child: Row(
                children: [
                  Image.asset('images/like.png'),
                  const SizedBox(width: 15,),
                  Image.asset('images/chat.png'),
                  const SizedBox(width: 15,),
                  Image.asset('images/share.png'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

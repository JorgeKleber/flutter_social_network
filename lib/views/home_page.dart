import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.horizontal(),
              child: Image.asset('images/background.png',
                  width: double.maxFinite,
                  height: 250,
                  fit: BoxFit.cover),
            )
          ),
          Transform.translate(
            offset: const Offset(0, -75),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image.asset('images/user.png',
                width: 150,
                height: 150,
              fit: BoxFit.fill,),
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -120),
            child: Container(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: const <Widget>[
                       Text('12K', style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
                       Text('Followers', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox.fromSize(),
                  ),
                  Expanded(
                    child: Column(
                      children: const <Widget>[
                        Text('12K', style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
                        Text('Followers', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

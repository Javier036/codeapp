import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  //const VideoSection({super.key});

  List videoList = [
    'Introducción a Dart',
    'Instalacion de Flutter a Windows',
    'Flutter - Primeros pasos',
    'Cierre del curso',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? Color(0XFF674AEF)
                  : Color(0XFF674AEF).withOpacity(0.6),
              shape: BoxShape.circle, 
            ),
            child: Icon(Icons.play_arrow_rounded,
            color: Colors.white, size: 30,),
          ),
          title: Text(videoList[index]),
          subtitle: Text("20 min 50 sec"),
        );
      },
    );
  }
}

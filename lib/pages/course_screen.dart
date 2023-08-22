import 'package:codeapp/widgets/description_section.dart';
import 'package:codeapp/widgets/videos_section.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CourseScreen extends StatefulWidget {
  String img;
  // ignore: use_key_in_widget_constructors
  CourseScreen(this.img);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVideosSection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Color(0XFF674AEF),
            ),
          ),
        ],
      ),
      body: Padding(
<<<<<<< HEAD
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
=======
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
>>>>>>> 4a1cb01d1f211c51669346fa69bcaaa7b52258d7
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
<<<<<<< HEAD
                color: const Color(0XFFF5F3FF),
=======
                color: Color(0XFFF5F3FF),
>>>>>>> 4a1cb01d1f211c51669346fa69bcaaa7b52258d7
                image: DecorationImage(
                  image: AssetImage("images/${widget.img}.png"),
                ),
              ),
              child: Center(
                child: Container(
<<<<<<< HEAD
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
=======
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
>>>>>>> 4a1cb01d1f211c51669346fa69bcaaa7b52258d7
                    Icons.play_arrow_rounded,
                    color: Color(0XFF674AEF),
                    size: 45,
                  ),
                ),
              ),
            ),
<<<<<<< HEAD
            const SizedBox(height: 15),
            Text(
              "${widget.img} Completa el Curso",
              style: const TextStyle(
=======
            SizedBox(height: 15),
            Text(
              "Curso Basico de ${widget.img} ",
              style: TextStyle(
>>>>>>> 4a1cb01d1f211c51669346fa69bcaaa7b52258d7
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
<<<<<<< HEAD
            const SizedBox(height: 5),
            Text(
              "Creado por Hector Yam",
=======
            SizedBox(height: 5),
            Text(
              "Creado por Ing. Miguel Campos Rivera",
>>>>>>> 4a1cb01d1f211c51669346fa69bcaaa7b52258d7
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
<<<<<<< HEAD
            const SizedBox(height: 5),
            Text(
              "10 videos",
=======
            SizedBox(height: 5),
            Text(
              "Gratuito",
>>>>>>> 4a1cb01d1f211c51669346fa69bcaaa7b52258d7
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
              ),
<<<<<<< HEAD
            )
=======
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0XFFF5F3FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: isVideosSection
                        ? Color(0XFF674AEF)
                        : Color(0XFF674AEF).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideosSection = true;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Videos",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: isVideosSection
                        ? Color(0XFF674AEF).withOpacity(0.6)
                        : Color(0XFF674AEF),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideosSection = false;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Descripción",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            isVideosSection ? VideoSection() : DescriptionSection(), 
>>>>>>> 4a1cb01d1f211c51669346fa69bcaaa7b52258d7
          ],
        ),
      ),
    );
  }
}

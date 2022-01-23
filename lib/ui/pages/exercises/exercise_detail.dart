import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prfit_v2/models/exercises.dart';

class ExerciseDetail extends StatelessWidget {
  final Exercises exercises;
  const ExerciseDetail(
    this.exercises, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageTutorial() {
      return Container(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffFFFFFF),
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 1)]),
        child: Image.asset(
          exercises.exerciseList[Get.arguments]['gambar'],
          width: 350,
          height: 350,
        ),
      );
    }

    Widget textTutorial() {
      return Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffFFFFFF),
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 1)]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(exercises.exerciseList[Get.arguments]['nama'],
                  style: const TextStyle(fontSize: 21.0)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  const Text(
                    "Bagian otot : ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  Text(
                    exercises.exerciseList[Get.arguments]['otot'],
                    style: const TextStyle(fontSize: 15.0),
                  )
                ],
              ),
            ),
            Row(
              children: [
                const Text(
                  "Alat : ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                Text(
                  exercises.exerciseList[Get.arguments]['alat'],
                  style: const TextStyle(fontSize: 15.0),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
              child: Text(
                "Tutorial : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
            ),
            Text(
              exercises.exerciseList[Get.arguments]['tutorial'],
              style: const TextStyle(
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(exercises.exerciseList[Get.arguments]['nama']),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [imageTutorial(), textTutorial()],
        ),
      ),
    );
  }
}

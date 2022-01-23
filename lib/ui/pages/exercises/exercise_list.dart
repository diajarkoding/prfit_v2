import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prfit_v2/models/exercises.dart';
import 'package:prfit_v2/ui/pages/exercises/exercise_detail.dart';

class ExerciseList extends StatelessWidget {
  final Exercises exercises;
  const ExerciseList(this.exercises, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            exercises.nama,
          ),
        ),
        body: ListView.builder(
          itemCount: exercises.exerciseList.length,
          itemBuilder: (context, index) {
            return Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  title: Text(exercises.exerciseList[index]['nama'],
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400)),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: const Color(0xffFFFFFF),
                    child: Image.asset(
                      exercises.exerciseList[index]['gambar'],
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    Get.to(() => ExerciseDetail(exercises), arguments: index);
                  },
                ),
              ),
            );
          },
        ));
  }
}

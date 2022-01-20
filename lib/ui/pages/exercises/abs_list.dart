import 'package:flutter/material.dart';
import 'package:prfit_v2/models/abs.dart';
import 'package:prfit_v2/ui/pages/exercises/detail_abs.dart';

class AbsList extends StatelessWidget {
  const AbsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Latihan Otot Perut',
          ),
        ),
        body: ListView.builder(
          itemCount: absList.length,
          itemBuilder: (context, index) {
            Abs abs = absList[index];
            return Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  title: Text(abs.nama,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400)),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: const Color(0xffFFFFFF),
                    child: Image.asset(
                      abs.gambar,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AbsDetail(abs),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:prfit_v2/models/abs.dart';

class AbsDetail extends StatelessWidget {
  final Abs abs;
  const AbsDetail(
    this.abs, {
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
          abs.gambar,
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
              child: Text(abs.nama, style: TextStyle(fontSize: 21.0)),
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
                    abs.otot,
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
                  abs.alat,
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
              abs.tutorial,
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
        title: const Text('Air Bike'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [imageTutorial(), textTutorial()],
        ),
      ),
    );
  }
}

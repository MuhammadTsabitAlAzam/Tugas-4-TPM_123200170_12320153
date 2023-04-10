import 'package:flutter/material.dart';

class DaftarAnggota extends StatelessWidget {
  const DaftarAnggota({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Anggota'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          children: [
            Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 3,
                    child: Icon(Icons.person),
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Amara Salsabila',
                        style: TextStyle(fontSize: 16),
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        '123200153',
                        style: TextStyle(fontSize: 16),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 3,
                    child: Icon(Icons.person),
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Muhammad Tsabit Al Azam',
                        style: TextStyle(fontSize: 16),
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        '1232001170',
                        style: TextStyle(fontSize: 16),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
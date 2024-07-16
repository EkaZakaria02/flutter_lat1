import 'package:flutter/material.dart';

class Tugas extends StatefulWidget {
  const Tugas({super.key});

  @override
  State<Tugas> createState() => _TugasState();
}

class _TugasState extends State<Tugas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flutter Latihan saya',
          style: TextStyle(
            color: Color.fromARGB(255, 4, 84, 244),
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 3,
        backgroundColor: const Color.fromARGB(255, 216, 240, 7),
        actions: const [
          Icon(
            Icons.logout,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        leading: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.all(16),
                      width: 300,
                      height: 300,
                      color: const Color.fromARGB(255, 255, 67, 249),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.all(16),
                      width: 300,
                      height: 300,
                      color: const Color.fromARGB(255, 255, 67, 249),
                    ),
                  ],
                );
              },
              itemCount: 5,
              separatorBuilder: (context, index) {
                return const Divider();
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              //physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, asik) {
                return const Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 143, 243, 4),
                      // child: Text(''),
                    ),
                    title: Text('Judul'),
                    subtitle: Text('asik'),
                    trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                      Icon(Icons.favorite,
                          color: Color.fromARGB(255, 244, 54, 244)),
                      SizedBox(
                        //membuat jarak icon like dengan tongsampah
                        width: 5,
                      ),
                      Icon(Icons.delete),
                    ]),
                  ),
                );
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}

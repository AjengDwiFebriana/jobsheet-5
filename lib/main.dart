import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  final List data = [
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=1',
      'name': 'Putri Meri Aryunda',
      'nim': 'STE202102471',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=1',
      'name': 'Yudha Abilansyah',
      'nim': 'STI202102172',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=1',
      'name': 'Ajeng Dwi Febriana',
      'nim': 'STI202102273',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=1',
      'name': 'Yudha',
      'nim': 'STI202102274',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=1',
      'name': 'Apik Maulidah Purnaningsih',
      'nim': 'STI202102475',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Mahasiswa"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(data[index]['photoUrl']),
            title: Text(data[index]['name']),
            subtitle: Text(data[index]['nim']),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
            tileColor: Colors.grey[400],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          );
        },
        itemCount: data.length,
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 2,
            color: Colors.grey,
          );
        },
      ),
    );
  }
}

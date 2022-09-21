import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  ListviewPage({super.key});

  List animals = [
    {
      'nama': 'Kucing',
      'jenis': 'Mamalia',
    },
    {
      'nama': 'Ayam',
      'jenis': 'Unggas',
    },
    {
      'nama': 'Burung',
      'jenis': 'Unggas',
    },
    {
      'nama': 'Ikan',
      'jenis': 'Mamalia',
    },
    {
      'nama': 'Semut',
      'jenis': 'Serangga',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview'),
      ),
      body: ListView.builder(
        itemCount: animals.length,
        itemBuilder: (BuildContext context, int index) {
          Map animal = animals[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: 
            Column(
              children: [
                Text(animal['nama']),
              ],
            ),

            subtitle: Text(animals[index]['jenis']),
            trailing: const Icon(Icons.navigate_next),
          );
        },
      ),
    );
  }
}

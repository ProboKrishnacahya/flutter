import 'package:course_flutter_krishna/page/detail_map_page.dart';
import 'package:flutter/material.dart';

class CustomItemPage extends StatelessWidget {
  CustomItemPage({super.key});

  List animals = [
    {
      'nama': 'Kucing',
      'jenis': 'Mamalia',
      'url':
          'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    },
    {
      'nama': 'Ayam',
      'jenis': 'Unggas',
      'url':
          'https://images.pexels.com/photos/5145/animal-easter-chick-chicken.jpg?auto=compress&cs=tinysrgb&w=400',
    },
    {
      'nama': 'Burung',
      'jenis': 'Unggas',
      'url':
          'https://images.pexels.com/photos/349758/hummingbird-bird-birds-349758.jpeg?auto=compress&cs=tinysrgb&w=400',
    },
    {
      'nama': 'Ikan',
      'jenis': 'Mamalia',
      'url':
          'https://images.pexels.com/photos/128756/pexels-photo-128756.jpeg?auto=compress&cs=tinysrgb&w=400',
    },
    {
      'nama': 'Semut',
      'jenis': 'Serangga',
      'url':
          'https://images.pexels.com/photos/842401/pexels-photo-842401.jpeg?auto=compress&cs=tinysrgb&w=400',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Item Page'),
      ),
      body: ListView.builder(
        itemCount: animals.length,
        itemBuilder: (BuildContext context, int index) {
          Map animal = animals[index];

          return GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DetailMapPage(animal: animal,);
                }),
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(
                16,
                index == 0 ? 16 : 8,
                16,
                index == animals.length - 1 ? 16 : 8,
              ),
              color: Colors.grey[800],
              child: Row(
                children: [
                  Image.network(
                    animal['url'],
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(animal['nama']),
                        Text(animal['jenis']),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

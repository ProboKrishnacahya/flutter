import 'package:course_flutter_krishna/model/animal.dart';
import 'package:course_flutter_krishna/page/detail_animal_page.dart';
import 'package:flutter/material.dart';

class ListviewDirectionPage extends StatelessWidget {
  ListviewDirectionPage({super.key});

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
        title: const Text('Listview Direction'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'New',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          horizontalList(),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Popular',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          verticalList(),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Grid',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          gridList(),
        ],
      ),
    );
  }

  Widget verticalList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: listAnimal.length,
      itemBuilder: (BuildContext context, int index) {
        Animal animal = listAnimal[index];

        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailAnimalPage(animal: animal),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(
              16,
              index == 0 ? 16 : 8,
              16,
              index == animals.length - 1 ? 16 : 8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey[800],
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  child: Image.network(
                    animal.url,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(animal.nama),
                      Text(animal.jenis),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget horizontalList() {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: animals.length,
        itemBuilder: (BuildContext context, int index) {
          Map animal = animals[index];

          return Container(
            margin: EdgeInsets.fromLTRB(
              index == 0 ? 16 : 8,
              0,
              index == animals.length - 1 ? 16 : 8,
              0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey[800],
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  child: Image.network(
                    animal['url'],
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(animal['nama']),
                    Text(animal['jenis']),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget gridList() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: animals.length,
      padding: const EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        // childAspectRatio: 1.8,
        // mainAxisExtent: 60,
      ),
      itemBuilder: (BuildContext context, int index) {
        Map animal = animals[index];

        return Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              animal['url'],
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 8,
              left: 8,
              child: Text(
                animal['nama'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

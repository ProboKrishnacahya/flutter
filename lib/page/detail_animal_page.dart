import 'package:course_flutter_krishna/model/animal.dart';
import 'package:flutter/material.dart';

class DetailAnimalPage extends StatefulWidget {
  const DetailAnimalPage({super.key, required this.animal});

  final Animal animal; // Non-nullable

  @override
  State<DetailAnimalPage> createState() => _DetailAnimalPageState();
}

class _DetailAnimalPageState extends State<DetailAnimalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Map'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Image.network(
            widget.animal.url,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.animal.nama),
                Text(widget.animal.jenis),
                Text('${widget.animal.jumlahKaki ?? 'Tidak punya kaki'}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

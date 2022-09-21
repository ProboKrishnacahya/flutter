import 'package:flutter/material.dart';

// class DetailMapPage extends StatelessWidget {
//   const DetailMapPage({super.key, required this.animal});
//   final Map animal;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Detail Map'),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(16),
//         children: [
//           AspectRatio(
//             aspectRatio: 16 / 9,
//             child: Image.network(
//               animal['url'],
//             ),
//           ),
//           const SizedBox(
//             width: 16,
//             height: 16,
//           ),
//           Text(animal['nama']),
//           Text(animal['jenis']),
//         ],
//       ),
//     );
//   }
// }

class DetailMapPage extends StatefulWidget {
  const DetailMapPage({super.key, required this.animal});

  final Map animal; // Non-nullable

  @override
  State<DetailMapPage> createState() => _DetailMapPageState();
}

class _DetailMapPageState extends State<DetailMapPage> {
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
            widget.animal['url'],
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.animal['nama']),
                Text(widget.animal['jenis']),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

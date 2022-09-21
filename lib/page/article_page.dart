import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  launchWeb() async {
    final uri = Uri.parse('https://www.zenius.net/blog/bumi-bulat-datar');
    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    String title = 'Mana yang Benar: Bumi Bulat atau Bumi Datar?';
    String introduction =
        '''Halo! Di artikel blog Zenius kali ini gue akan membahas tentang bentuk bumi. Termasuk teorinya yaitu teori bumi bulat serta tandingannya nih, teori bumi datar.

Akhir-akhir ini di berbagai media sosial rame banget dibahas tentang bumi yang berbentuk datar (flat earth). Gak cuma di Indonesia, di Amerika pun pandangan bumi datar pun sempet rame dan cukup banyak dipercaya oleh beberapa kalangan. 

Guru-guru di sekolah yang diharapkan bisa men-counter hal ini ga jarang ikut-ikutan terbawa arus, malah banyak yang ikutan dan percaya kalo bumi itu datar. Okelah, dari pada makin bingung, sekarang kita buktikan aja mana yang bener. Teori bumi bulat atau teori bumi datar? Untuk dapat jawabannya, jangan lupa baca artikel ini sampai akhir ya!''';
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.menu),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.navigate_before,
            size: 30,
          ),
        ),
        titleSpacing: 0,
        title: const Text('Home Page'),
        // centerTitle: true,
        actions: const [
          Icon(Icons.notifications),
          Icon(Icons.settings),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Colors.cyan[500],
                    ),
              ),
              const SizedBox(
                height: 16,
              ),
              dataPublish(),
              const SizedBox(
                height: 16,
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://www.zenius.net/blog/wp-content/uploads/2016/08/Mana-yang-Benar-Bumi-Bulat-atau-Bumi-Datar.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                introduction,
              ),
              const SizedBox(
                height: 16,
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://www.zenius.net/blog/wp-content/uploads/2016/08/Bumi-Bulat-atau-Datar.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    'Ilustrasi bumi bulat dan bumi datar (dok: Arsip Zenius)',
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    launchWeb();
                  },
                  child: const Text('Selengkapnya'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row dataPublish() {
    return Row(
      children: const [
        Text(
          'By Ari Candra on',
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          'July 25, 2022',
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          width: 4,
        ),
        Icon(
          Icons.comment,
          color: Colors.grey,
          size: 15,
        ),
        Text(
          '317',
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}

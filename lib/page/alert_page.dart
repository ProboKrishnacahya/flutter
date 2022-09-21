import 'package:course_flutter_krishna/page/dialog_page.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  // duration: const Duration(seconds: 2),
                  content: const Text('Upload Success'),
                  action: SnackBarAction(label: 'Undo', onPressed: () {}),
                ),
              );
            },
            child: const Text('Default Snackbar'),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  behavior: SnackBarBehavior.floating,
                  content: const Text('Upload Success'),
                  action: SnackBarAction(label: 'Undo', onPressed: () {}),
                  // backgroundColor: Colors.black,
                ),
              );
            },
            child: const Text('Floating Snackbar'),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showMaterialBanner(
                MaterialBanner(
                  // leading: Image.network('src'),
                  content: const Text('You are not login.\nLogin Now'),
                  actions: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Login'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Close'),
                    ),
                  ],
                ),
              );
              Future.delayed(const Duration(seconds: 3), () {
                ScaffoldMessenger.of(context).clearMaterialBanners();
              });
            },
            child: const Text('Material Banner'),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const DialogPage();
                }),
              );
            },
            child: const Text('Dialog'),
          ),
        ],
      ),
    );
  }
}

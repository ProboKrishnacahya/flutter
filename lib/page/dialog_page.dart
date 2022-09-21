import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const SimpleDialog(
                  title: Text('Title'),
                  children: [
                    Text('Text 1'),
                    Text('Text 2'),
                  ],
                ),
              );
            },
            child: const Text('Simple Dialog'),
          ),
        ],
      ),
    );
  }
}

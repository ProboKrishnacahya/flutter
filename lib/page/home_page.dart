import 'package:course_flutter_krishna/page/alert_page.dart';
import 'package:course_flutter_krishna/page/article_page.dart';
import 'package:course_flutter_krishna/page/calculator_page.dart';
import 'package:course_flutter_krishna/page/custom_item_page.dart';
import 'package:course_flutter_krishna/page/listview_direction_page.dart';
import 'package:course_flutter_krishna/page/listview_page.dart';
import 'package:course_flutter_krishna/page/widgets_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const ArticlePage();
                }),
              );
            },
            child: const Text('Article'),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const CalculatorPage();
                }),
              );
            },
            child: const Text('Calculator'),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ListviewPage();
                }),
              );
            },
            child: const Text('Listview'),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return CustomItemPage();
                }),
              );
            },
            child: const Text('Custom Item'),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ListviewDirectionPage();
                }),
              );
            },
            child: const Text('Listview Direction'),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return WidgetsPage();
                }),
              );
            },
            child: const Text('Widget'),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const AlertPage();
                }),
              );
            },
            child: const Text('Alert Page'),
          ),
        ],
      ),
    );
  }
}

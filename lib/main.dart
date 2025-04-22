import 'package:flutter/material.dart';

void main() {
  runApp(const HealthApp());
}

class HealthApp extends StatelessWidget {
  const HealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'سلامتی در فلاتر',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, String>> articles = const [
    {
      'title': '10 Healthy Foods You Should Eat Every Day',
      'summary': 'Discover the top nutritious foods that promote better health and longevity.',
      'image': 'https://via.placeholder.com/150'
    },
    {
      'title': 'Mental Health Tips for a Better Life',
      'summary': 'Learn how to take care of your mental well-being in daily life.',
      'image': 'https://via.placeholder.com/150'
    },
    {
      'title': 'Simple Exercises to Stay Fit at Home',
      'summary': 'No gym? No problem! These exercises can be done in your living room.',
      'image': 'https://via.placeholder.com/150'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('سلامتی در فلاتر'),
        actions: [
          TextButton(onPressed: () {}, child: const Text('Home', style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () {}, child: const Text('Nutrition', style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () {}, child: const Text('Fitness', style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () {}, child: const Text('Mental Health', style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () {}, child: const Text('About', style: TextStyle(color: Colors.white))),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Image.network(article['image']!),
              title: Text(article['title']!),
              subtitle: Text(article['summary']!),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}

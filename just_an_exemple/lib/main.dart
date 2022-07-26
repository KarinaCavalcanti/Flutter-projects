import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final profileImage = const CircleAvatar(
    backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/63470083?v=4'),
    radius: 132,
  );

  final name = const Text(
    'Karina Cavalcanti Lucindo',
    style: TextStyle(fontSize: 16),
    textAlign: TextAlign.center,
  );

  final email = IconButton(
    color: Colors.purple,
    icon: const Icon(Icons.mail),
    onPressed: (){
      launchUrl(Uri(scheme: 'mailto', path: 'karina.lucindo@outlook.com'));
    },
  );

  Widget build(BuildContext context) { 
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          profileImage,
          name,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              email,
            ],
          ),
        ],
      ),
    );
  }
}

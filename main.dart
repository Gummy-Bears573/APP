import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyFairyApp());
}

class MyFairyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Fairy App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFairyHomePage(),
    );
  }
}

class MyFairyHomePage extends StatefulWidget {
  @override
  _MyFairyHomePageState createState() => _MyFairyHomePageState();
}

class _MyFairyHomePageState extends State<MyFairyHomePage> {
  String fairyResponse = '你好！我是小精灵，很高兴见到你。';

  void _sayHello() {
    setState(() {
      fairyResponse = '你好！有什么我可以帮助你的吗？';
    });
  }

  void _giveRandomGreeting() {
    final greetings = [
      '你好！',
      '哈喽！',
      '欢迎！',
      '你好啊！',
      '有什么我可以帮助你的吗？',
    ];

    final random = Random();
    final randomGreeting = greetings[random.nextInt(greetings.length)];

    setState(() {
      fairyResponse = randomGreeting;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('小精灵应用'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '小精灵的回应:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              fairyResponse,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _sayHello,
            tooltip: '打招呼',
            child: Icon(Icons.chat),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: _giveRandomGreeting,
            tooltip: '随机问候',
            child: Icon(Icons.star),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:splash/pages/second_page.dart';
import 'package:splash/widgets/my_drawer.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 50,
          color: Colors.black38,
        ),
        actions: const <Widget>[
          Icon(Icons.info),
          Icon(Icons.question_mark),
        ],
      ),
      body: Center(
        child: InkWell(
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Hi '),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}

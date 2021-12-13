import 'package:flutter/material.dart';
import 'package:flutter_lutie_practice/page1.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Page1(),
                ),
              );
            },
            child: const Text('Page 1'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Page 1'),
          )
        ],
      )),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_lutie_practice/page1.dart';

import 'page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Page1(),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: Text(
                  'Page 1',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.apply(color: Colors.white),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Page2(),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: Text(
                  'Page 2',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.apply(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

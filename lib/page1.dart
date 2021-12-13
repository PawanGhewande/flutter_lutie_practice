import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0093E9), Color(0xFF80D0C7)],
            ),
          ),
          child: Stack(
            children: [
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Lottie.network(
                    'https://assets9.lottiefiles.com/packages/lf20_LOle4Y.json',
                    fit: BoxFit.cover),
              ),
              Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'Sample Text',
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            ?.apply(fontWeightDelta: 4, color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.network(
                            'https://cdn.pixabay.com/photo/2020/11/15/18/51/cat-5746875_1280.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.network(
                            'https://freesvg.org/img/Gerald-G-Cartoon-Cat-Walking.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Image.network(
                            'https://cdn.pixabay.com/photo/2021/02/11/16/22/cat-6005847_1280.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_lutie_practice/core/constants.dart';
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
              colors: [color1, color2],
            ),
          ),
          child: Stack(
            children: [
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Lottie.network(bg1, fit: BoxFit.cover),
              ),
              Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        text,
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
                        child: Image.network(cat1),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.network(cat2),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Image.network(cat3),
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

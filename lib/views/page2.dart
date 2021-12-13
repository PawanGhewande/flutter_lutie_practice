import 'package:flutter/material.dart';
import '../core/constants.dart';
import 'package:lottie/lottie.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
                child: Lottie.network(bg2, fit: BoxFit.cover),
              ),
              Column(
                children: [
                  Expanded(child: Container()),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            text,
                            style: Theme.of(context).textTheme.headline2?.apply(
                                fontWeightDelta: 4, color: Colors.white),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Image.network(img1),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Image.network(img2),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Image.network(img3),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
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

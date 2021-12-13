import 'package:flutter/material.dart';
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
              colors: [Color(0xFF0093E9), Color(0xFF80D0C7)],
            ),
          ),
          child: Stack(
            children: [
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Lottie.network(
                    'https://assets7.lottiefiles.com/packages/lf20_rebadwzb.json',
                    fit: BoxFit.cover),
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
                            'Sample Text',
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
                                    child: Image.network(
                                        'https://s3.ap-south-1.amazonaws.com/res.myhoggy.co/kizcastle/Courses/comb.png'),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Image.network(
                                        'https://s3.ap-south-1.amazonaws.com/res.myhoggy.co/kizcastle/Courses/exer.png'),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Image.network(
                                        'https://s3.ap-south-1.amazonaws.com/res.myhoggy.co/kizcastle/Courses/wash.png'),
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

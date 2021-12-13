import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3490dc),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF), Color(0xff)])),
            ),
            Column(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'Sample Text',
                      style: Theme.of(context).textTheme.headline2?.apply(
                            fontWeightDelta: 4,
                          ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.network(
                        'https://s3.ap-south-1.amazonaws.com/res.myhoggy.co/kizcastle/Courses/wash.png'),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.network(
                        'https://s3.ap-south-1.amazonaws.com/res.myhoggy.co/kizcastle/Courses/exer.png'),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.network(
                        'https://s3.ap-south-1.amazonaws.com/res.myhoggy.co/kizcastle/Courses/comb.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

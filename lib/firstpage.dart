import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:introscreen/signinpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntroductionScreen(
        pagesAxis: Axis.horizontal,
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
        scrollPhysics: const BouncingScrollPhysics(),
        showNextButton: true,
        showBackButton: false,
        showDoneButton: false,
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Outfit',
              fontSize: 20,
              color: Colors.black),
        ),
        next: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15.0,
              ),
              color: Colors.blueAccent),
          height: 45,
          width: 120,
          child: const Center(
            child: Text(
              'Next',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Outfit',
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
        ),
        pages: [
          PageViewModel(
            titleWidget: const Text(
              'Introduction 1',
              style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            bodyWidget: const Center(
                child: Text(
              textAlign: TextAlign.center,
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi nulla purus neque quisque dictum dui. Accumsan fames adipiscing.',
              style: TextStyle(fontSize: 17.0, fontFamily: 'Outfit'),
            )),
            image: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Center(
                child: Image.asset(
                  'images/firstimage.png',
                  height: 194.46,
                  width: 309,
                ),
              ),
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              'Introduction 2',
              style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            bodyWidget: const Center(
                child: Text(
              textAlign: TextAlign.center,
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi nulla purus neque quisque dictum dui. Accumsan fames adipiscing.',
              style: TextStyle(fontSize: 17.0, fontFamily: 'Outfit'),
            )),
            image: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Center(
                child: Image.asset(
                  'images/secondimage.png',
                  height: 242.29,
                  width: 325.16,
                ),
              ),
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              'Introduction 3',
              style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            bodyWidget: const Center(
                child: Text(
              textAlign: TextAlign.center,
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi nulla purus neque quisque dictum dui. Accumsan fames adipiscing.',
              style: TextStyle(fontSize: 17.0, fontFamily: 'Outfit'),
            )),
            image: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Center(
                child: Image.asset(
                  'images/thirdimage.png',
                  height: 221.41,
                  width: 271.48,
                ),
              ),
            ),
          ),
          PageViewModel(
              titleWidget: const Text(
                'Explore the app',
                style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              bodyWidget: const Center(
                  child: Text(
                textAlign: TextAlign.center,
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi nulla purus neque quisque dictum dui. Accumsan fames adipiscing.',
                style: TextStyle(fontSize: 17.0, fontFamily: 'Outfit'),
              )),
              image: Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Center(
                  child: Image.asset(
                    'images/fourthimage.png',
                    height: 298,
                    width: 399.94,
                  ),
                ),
              ),
              footer: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 100),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20)),
                  height: 51,
                  width: 240,
                  child: const Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Outfit',
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

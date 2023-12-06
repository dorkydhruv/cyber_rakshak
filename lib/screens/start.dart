import 'package:cyber_rakshak/screens/login.dart';
import 'package:flutter/material.dart';

class StartScreens extends StatefulWidget {
  const StartScreens({super.key});
  static const String routeName = '/start';

  @override
  State<StartScreens> createState() => _StartScreensState();
}

class _StartScreensState extends State<StartScreens> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 22, 22, 34),
      body: PageView(
        controller: PageController(initialPage: page),
        onPageChanged: (val) => setState(() {
          page = val;
        }),
        children: [
          _page(img: '1', s: 'New case'),
          _page(img: '2', s: 'Criminal Record'),
          _page(img: '3', s: 'Investigation'),
          Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset('src/4s.png'),
                ),
                RichText(
                    text: const TextSpan(
                        text: "Hey!",
                        style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 44,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700),
                        children: [
                      TextSpan(
                          text: " Welcome",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 44,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700)),
                    ])),
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: const Text(
                    'Our App is an initiative to investigate a Cyber crime in a fresh dimension',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.cyan[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, LoginScreen.routeName, (route) => false);
                    },
                    child: const Text(
                      'Let\'s Investigate',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Inter'),
                    )),
              ),
            )
          ])
        ],
      ),
    );
  }

  Widget _page({required String img, required String s}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Image.asset('src/${img}s.png'),
        ),
        Text(
          s,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Register a new case in just few simple steps',
            style: TextStyle(
                color: Colors.grey, fontFamily: 'Inter', fontSize: 14),
          ),
        ),
      ],
    );
  }
}

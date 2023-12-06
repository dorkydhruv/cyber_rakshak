import 'package:cyber_rakshak/screens/start.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slider_action/slider_action.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: const DecorationImage(
              image: AssetImage(
                'src/splash.png',
              ),
              fit: BoxFit.fill),
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              child: const Text(
                'Cyber\nRakshak',
                style: TextStyle(
                    letterSpacing: 0.2,
                    color: Colors.white,
                    fontFamily: 'Inter',
                    fontSize: 60,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SlideAction(
                innerColor: Colors.transparent.withOpacity(0.02),
                sliderButtonIcon: const Icon(
                  Icons.person_search,
                  color: Colors.white,
                ),
                outerColor: Colors.grey.withOpacity(0.2),
                submittedIcon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onSubmit: () {
                  Navigator.pushNamed(context, StartScreens.routeName);
                },
                child: const Text(
                  'Start Investigating      > >',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("BY TEAM ENUMS ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  SvgPicture.asset(
                    'src/love.svg',
                    height: 0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

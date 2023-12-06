import 'package:cyber_rakshak/screens/Criminal_Record.dart';
import 'package:cyber_rakshak/screens/investigation.dart';
import 'package:cyber_rakshak/screens/new_case.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});
  static const String routename = '/dashboard';

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 22, 22, 34),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading:
                    CircleAvatar(child: Icon(Icons.person_2_sharp), radius: 30),
                title: Text(
                  "Hi,",
                  style: TextStyle(fontSize: 19, color: Colors.grey),
                ),
                subtitle: Text(
                  'Dhruv Sharma',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      fontSize: 28),
                ),
                trailing: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              alignment: Alignment.centerLeft,
              child: const Column(
                children: [
                  Text(
                    "Making",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: RichText(
                text: const TextSpan(
                    text: "Investigation, ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 109, 64, 255),
                      fontFamily: 'Inter',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                          text: "Easier!",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(33, 255, 255, 255), width: 2),
                  borderRadius: BorderRadius.circular(30)),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search here",
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Services",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: double.infinity,
              height: 140,
              child: PageView(
                controller:
                    PageController(viewportFraction: 0.5, initialPage: 0),
                padEnds: false,
                scrollDirection: Axis.horizontal,
                children: [
                  buildItem(const AssetImage('src/newcase.png'),
                      show: show, route: Newcase.routename),
                  buildItem(const AssetImage('src/criminal.png'),
                      show: show, route: CriminalRecord.routename),
                  buildItem(const AssetImage('src/inves.png'),
                      show: show, route: Investigation.routename),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(30),
              height: MediaQuery.of(context).size.height * 0.15,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 25, 25, 25),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: ListTile(
                  title: Text(
                    '1 Lakh amt debit using malicious link',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Inter',
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'Complain register at 10:25 AM (IST)',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  trailing: Image(
                      image: AssetImage(
                        'src/hackor.png',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  buildItem(
    ImageProvider img, {
    required bool show,
    required String route,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          show = true;
          print(show);
        });
      },
      onDoubleTap: () => Navigator.of(context).pushNamed(route),
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(image: img)),
        child: show
            ? Container(
                color: Colors.transparent.withOpacity(0.02),
                child: Text(
                  'hELLO',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            : const Text(''),
      ),
    );
  }
}

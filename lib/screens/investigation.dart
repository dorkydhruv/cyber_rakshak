import 'package:flutter/material.dart';

class Investigation extends StatefulWidget {
  const Investigation({super.key});
  static const routename = "/investigation";
  @override
  State<Investigation> createState() => _InvestigationState();
}

class _InvestigationState extends State<Investigation> {
  final expectedAttack = TextEditingController();
  final description = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 22, 22, 34),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('src/investigate.png'))),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                  leading: CircleAvatar(
                      child: Icon(Icons.person_2_sharp), radius: 30),
                  title: Text(
                    "Investigation officer ",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  subtitle: Text(
                    'Dhruv Sharma',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                        fontSize: 28),
                  ),
                  trailing: Image(
                    fit: BoxFit.fill,
                    height: double.infinity,
                    image: AssetImage(
                      'src/police.png',
                    ),
                  )),
            ),
            const SizedBox(
              height: 50,
            ),
            buildField("Excepted Attack", controller: expectedAttack, h: 60),
            const SizedBox(
              height: 35,
            ),
            buildField("Description of the Attack",
                controller: description, h: 120),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    fixedSize: const Size(180, 50)),
                onPressed: () {},
                child: const Center(
                  child: Text(
                    "Investigate",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  buildField(String s,
      {required TextEditingController controller, required double h}) {
    return ListTile(
      title: Text(
        "   $s",
        style: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white),
      ),
      subtitle: Container(
        height: h,
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 25, 25, 25),
            border: Border.all(
              color: Colors.white60,
              width: 0.6,
            ),
            borderRadius: BorderRadius.circular(20)),
        child: TextField(
          controller: controller,
          decoration: const InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }
}

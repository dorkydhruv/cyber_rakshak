import 'package:flutter/material.dart';

class Newcase extends StatefulWidget {
  const Newcase({super.key});
  static const String routename = '/new-case';

  @override
  State<Newcase> createState() => _NewcaseState();
}

class _NewcaseState extends State<Newcase> {
  final TextEditingController expectedAttack = TextEditingController();
  final TextEditingController locationist = TextEditingController();
  final describe = TextEditingController();
  final dateandLocation = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 22, 22, 34),
      body: Column(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
                child: Column(
              children: [
                buildField("Expected Attack",
                    controller: expectedAttack, h: 45),
                buildField("Location and Time (IST) of FIR",
                    controller: locationist, h: 50),
                buildField("Describe the incident",
                    controller: describe, h: 150),
                ListTile(
                  title: const Text(
                    "   Attack files",
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  subtitle: Container(
                    height: 100,
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width *
                            0.45, //real time view
                        top: 3,
                        left: 3,
                        bottom: 3),
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 25, 25, 25),
                        border: Border.all(
                          color: Colors.white60,
                          width: 0.6,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(child: Icon(Icons.add)),
                  ),
                ),
                buildField("Date and Location of incident",
                    controller: dateandLocation, h: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: const Size(150, 40)),
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "Save draft",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan,
                            fixedSize: const Size(150, 40)),
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold),
                          ),
                        ))
                  ],
                )
              ],
            )),
          )
        ],
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
            fontSize: 13,
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

import 'package:flutter/material.dart';

class CriminalRecord extends StatefulWidget {
  const CriminalRecord({super.key});

  static const routename = "/criminal-record";
  @override
  State<CriminalRecord> createState() => _CriminalRecordState();
}

class _CriminalRecordState extends State<CriminalRecord> {
  final name = TextEditingController();
  final aadhar = TextEditingController();
  final location = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 22, 22, 34),
      body: Column(
        children: [
          Image.asset('src/record.png'),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Criminal Record",
                style: TextStyle(
                  fontFamily: "Inter",
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image(
                image: AssetImage(
                  'src/police.png',
                ),
                height: 70,
                width: 50,
              )
            ],
          ),
          buildField("Criminal Name / Organization Name *",
              controller: name, h: 60),
          buildField("Aadhaar Card *", controller: aadhar, h: 60),
          buildField("Location ( * for Organization )",
              controller: location, h: 60),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan, fixedSize: const Size(150, 40)),
              onPressed: () {},
              child: const Center(
                child: Text(
                  "Find It",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold),
                ),
              ))
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
            fontSize: 15,
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

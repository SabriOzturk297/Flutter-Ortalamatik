import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Sayaç"),
        actions: const [
          Icon(Icons.settings),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          InkWell(
            onTap: () {
              setState(() {
                counter++;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green[900],
                  borderRadius: const BorderRadius.all(Radius.circular(25))),
              margin: const EdgeInsets.only(bottom: 10),
              alignment: Alignment.center,
              width: 50,
              height: 50,
              child: const Text(
                "+",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Text("$counter"),
          InkWell(
            onTap: () {
              setState(() {
                counter--;
              });
            },
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              margin: const EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              width: 50,
              height: 50,
              child: const Text(
                "-",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Toplama extends StatefulWidget {
  const Toplama({super.key});

  @override
  State<Toplama> createState() => _ToplamaState();
}

class _ToplamaState extends State<Toplama> {
  int sayi1 = 0;
  int sayi2 = 0;
  int sonuc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sonuc = sayi1 + sayi2;
          });
        },
        child: const Icon(Icons.add),
      ),
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Toplama"),
        actions: const [
          Icon(Icons.settings),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey[100]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        sayi1 = int.parse(value);
                      },
                      initialValue: sayi1.toString(),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          labelText: "1. Sayı", hintText: "sayı giriniz"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        sayi2 = int.parse(value);
                      },
                      initialValue: sayi2.toString(),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          labelText: "2. Sayı", hintText: "sayı giriniz"),
                    )
                  ]),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              //color: Colors.amber[100],
              child: Text(
                "$sonuc",
                style: const TextStyle(fontSize: 32, color: Colors.teal),
                textAlign: TextAlign.left,
              ),
            ),
          )
        ],
      ),
    );
  }
}

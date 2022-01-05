import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List myworks = [];

  @override
  void initState() {
    super.initState();
    myworks.addAll(['Qubum', 'Dozum', 'Ureyim']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('My works'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: myworks.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
              key: Key(myworks[index]),
              child: Card(
                child: ListTile(title: Text(myworks[index]),),
              )
          );
        }
      ),
    );
  }
}

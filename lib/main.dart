import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //1.constructor

  @override
  Widget build(BuildContext context) {
    //2build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Flutter Week4"),
        ),
        body: Column(
          children: [
            Image.network("https://www.beartai.com/wp-content/uploads/2017/06/o1zg661fdlB22bw5b5a-o-579x600.jpg"),
            Image.network("https://picsum.photos/id/77/367/267"),
          ],
        ),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Hi!");
          },
          child: Icon(Icons.add_alert_outlined),
          backgroundColor: Colors.purple,
        ),
      ),
    );
  }
}
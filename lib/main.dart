import 'package:flutter/material.dart';
import 'package:state_management/produk_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product state demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "Ikan Gurame",
                description: "Ikan gurame ukuran 10 ons",
                price: 100000,
                image: "assets/gurame.jpg"),
            ProductBox(
                name: "Ikan lele",
                description: "Ikan lele sekilo",
                price: 80000,
                image: "assets/lele.jpg"),
            ProductBox(
                name: "Ikan Cupang",
                description: "Ikan cupang blue rim",
                price: 75000,
                image: "assets/cupang.jpg"),
          ],
        ));
  }
}

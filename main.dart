import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '6488024'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
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
                name: "KMC Perfect Hard",
                description: "KMC inner hard sleeve ",
                price: 160,
                isNetworkImage: false,
                image: "KMC-Perfect-Hard-Size-Sleeve.jpg"),
            ProductBox(
                name: "KMC Perfect",
                description: "KMC inner perfect sleeve",
                price: 180,
                isNetworkImage: false,
                image: "KMC-Side-in-Perfect-Size-Sleeve.jpg"),
            ProductBox(
                name: "KMC CSG Matt",
                description: "KMC matt sleeve",
                price: 160,
                isNetworkImage: false,
                image: "KMC-CSG-Matt.jpg"),
            ProductBox(
                name: "KMC Hyper Mat",
                description: "Hyper Mat black sleeve",
                price: 150,
                isNetworkImage: true,
                image:
                    "https://m.media-amazon.com/images/I/91pcme0shvL.__AC_SX300_SY300_QL70_FMwebp_.jpg"),
            ProductBox(
                name: "Hyper Mat mini",
                description: "Hyper mat mini sleeve",
                price: 200,
                isNetworkImage: true,
                image:
                    "https://m.media-amazon.com/images/I/71il+V86jAL._AC_UF894,1000_QL80_.jpg"),
            ProductBox(
                name: "Hyper Mat purple",
                description: "Hyper mat purple sleeve",
                price: 200,
                isNetworkImage: true,
                image:
                    "https://m.media-amazon.com/images/I/61AiKqVbTPL._AC_UF894,1000_QL80_.jpg"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.isNetworkImage,
    required this.image,
  }) : super(key: key);

  final String name;
  final String description;
  final int price;
  final bool isNetworkImage;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              isNetworkImage
                  ? Image.network(
                      image,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      "assets/images/" + image,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}

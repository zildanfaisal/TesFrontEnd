import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_web_tes/tab/searchSerialNumberTab.dart';
import 'package:my_web_tes/tab/searchStepTab.dart';
import 'package:my_web_tes/widget/customButton.dart';
import 'package:my_web_tes/widget/customCard.dart';
import 'package:my_web_tes/widget/customTextButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartridge Kings',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildContactUs(),
              buildHeader(),
              buildBanner(),
              buildProducts(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContactUs() {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.symmetric(horizontal: 108, vertical: 16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Franchies Opportunities"),
          SizedBox(width: 36),
          Text("Help"),
          SizedBox(width: 36),
          Text("Feedback"),
          Spacer(),
          Text("hello@email.com"),
          SizedBox(width: 36),
          Text("0800 022 2 022"),
        ],
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 108, vertical: 36),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.shopping_cart,
                color: Colors.orange,
                size: 48,
              ),
              const SizedBox(width: 16),
              const Text(
                "CARTRIDGE KINGS",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              SizedBox(
                width: 200,
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "SEARCH",
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              CustomButton(text: "CART (1)")
            ],
          ),
          SizedBox(height: 16),
          Container(
            color: Colors.blue,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTextButton(text: "HOME"),
                CustomTextButton(text: "INX CARTRIDGES"),
                CustomTextButton(text: "TONER CARTRIDGES"),
                CustomTextButton(text: "CONTACT US"),
                CustomTextButton(text: "LOGIN/REGISTER"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBanner() {
    return DefaultTabController(
      length: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 108, vertical: 108),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple, Colors.orange],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                "FIND THE RIGHT CARTRIDGES FOR YOUR PRINTER",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  TabBar(
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.blue,
                    tabs: [
                      Tab(text: "3-Step Easy Search"),
                      Tab(text: "Search by Serial Number"),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 120,
                    child: TabBarView(
                      children: [
                        SearchStepTab(),
                        SearchSerialNumberTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProducts() {
    final List<Map<String, String>> products = [
      {
        "image": "assets/img/1.jpg",
        "name": "HP 62 Black Ink Cartridge",
        "price": "\$9.49",
        "oldPrice": "",
      },
      {
        "image": "assets/img/2.jpeg",
        "name": "Canon MF-3110 Toner",
        "price": "\$36.45",
        "oldPrice": "",
      },
      {
        "image": "assets/img/1.jpg",
        "name": "HP 62 Black Ink Cartridge",
        "price": "\$5.99",
        "oldPrice": "\$9.49",
      },
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Text(
            "FEATURED PRODUCTS",
            style: TextStyle(
              color: Colors.black,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          CarouselSlider(
            items: products.map((product) {
              return Builder(
                builder: (BuildContext context) {
                  return CustomCard(
                    image: product["image"]!,
                    name: product["name"]!,
                    price: product["price"]!,
                    oldPrice: product["oldPrice"]!,
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: 300,
              enableInfiniteScroll: true,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.33,
            ),
          ),
        ],
      ),
    );
  }
}

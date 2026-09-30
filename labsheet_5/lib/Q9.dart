import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductScreen(),
    );
  }
}

class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  static final List<Product> products = [
    Product('Laptop', 55000),
    Product('Phone', 25000),
    Product('Headphones', 2000),
    Product('Watch', 3000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: Text(products[index].name),
            subtitle: Text('Price: ₹${products[index].price}'),
          );
        },
      ),
    );
  }
}
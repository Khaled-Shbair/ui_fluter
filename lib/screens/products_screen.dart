import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return const Card(color: Colors.red);
          }),
    );
  }
}
/*
GridView(
        padding: const EdgeInsetsDirectional.all(10),
        shrinkWrap: true,
        //physics: BouncingScrollPhysics(),
       // scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 132/214,
        ),
        children: const [
          Card(color: Colors.red),
          Card(color: Colors.black),
          Card(color: Colors.blue),
          Card(color: Colors.yellow),
          Card(color: Colors.red),
          Card(color: Colors.black),
          Card(color: Colors.yellow),
          Card(color: Colors.red),
        ],
      ),
**/

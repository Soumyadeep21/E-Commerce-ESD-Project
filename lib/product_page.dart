import 'package:e_commerce/items.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final Item item;

  const ProductPage({this.item});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_shopping_cart),
        onPressed: () {},
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Divider(),
              Hero(
                child: Image.asset(item.img),
                tag: item.img,
              ),
              Divider(),
              Text(
                item.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Divider(),
              Text(
                '₹${item.price.toInt()}',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Divider(),
              Text(
                'Desciption ',
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600),
              ),
              Divider(),
              Text(
                item.description,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

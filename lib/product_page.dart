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
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 10,
            child: Container(
              padding: EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Divider(),
                    Center(
                      child: Hero(
                        child: Image.asset(
                          item.img,
                          height: 350,
                          fit: BoxFit.scaleDown,
                        ),
                        tag: item.img,
                      ),
                    ),
                    Divider(),
                    Text(
                      item.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '₹${item.price.toInt()}',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        FloatingActionButton(
                          child: Icon(Icons.favorite_border),
                          backgroundColor: Colors.red,
                          mini: true,
                          onPressed: () {},
                        ),
                      ],
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: double.infinity,
                    color: Colors.orange,
                    child: Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    color: Colors.yellow,
                    child: Center(
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

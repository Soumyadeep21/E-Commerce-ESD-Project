import 'package:e_commerce/product_list_page.dart';
import 'package:e_commerce/products.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ProductListPage(
                  title: 'Laptops',
                  itemList: laptops,
                ),
              ),
            );
          },
          child: Card(
            elevation: 10.0,
            margin: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Laptops',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Card(
          elevation: 10.0,
          margin: EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              'Mobile Phones',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Card(
          elevation: 10.0,
          margin: EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              'Power Banks',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Card(
          elevation: 10.0,
          margin: EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              'Headsets / Headphones',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Card(
          elevation: 10.0,
          margin: EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              'Computer Accessories',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Card(
          elevation: 10.0,
          margin: EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              'Fitness Bands',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:e_commerce/items.dart';
import 'package:e_commerce/product_page.dart';
import 'package:e_commerce/products.dart';
import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  final List<Item> itemList;
  final String title;

  const ProductListPage({this.itemList, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemCount: itemList.length,
          itemBuilder: (_, index) => GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ProductPage(
                    item: laptops[index],
                  ),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(10),
              elevation: 10.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Hero(
                      tag: itemList[index].img,
                      child: Image.asset(itemList[index].img)),
                  Text(
                    itemList[index].name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

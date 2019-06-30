import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.remove_shopping_cart,
              size: 100,
            ),
            Text(
              'Oops! It looks like you have not shopped something',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text('Continue Shopping'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}

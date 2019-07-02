import 'package:flutter/material.dart';

class LocalStores extends StatelessWidget {
  final List<String> _items = [
    'Kundu Electronics',
    'Great Eastern',
    'Hello Electronics',
    'Adamas Electronics'
  ];
  final List<String> _address = [
    'Shakher Bazar',
    'Kheya Ghat',
    'Uttarpara',
    'Hindmotor',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (_, index) => Card(
          elevation: 10.0,
          child: ListTile(
            leading: CircleAvatar(
              child: Text(_items[index][0]),
            ),
            title: Text(_items[index]),
            subtitle: Text(_address[index]),
          ),
        ),
      ),
    );
  }
}

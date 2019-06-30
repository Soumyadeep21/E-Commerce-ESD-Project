import 'package:flutter/material.dart';

class Suggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'You have no suggestions to show currently! Click the chat button to ask for suggestions from our executive . ',
        textAlign: TextAlign.center,
      ),
    );
  }
}

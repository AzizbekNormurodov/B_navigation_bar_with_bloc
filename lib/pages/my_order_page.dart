import 'package:flutter/material.dart';

class MyOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'My Order Page',
          style: Theme.of(context).textTheme.headline3,
        ),

      ]),
    );
  }
}
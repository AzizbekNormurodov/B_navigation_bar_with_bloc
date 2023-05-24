import 'package:flutter/material.dart';

class BasketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Basket Page',
          style: Theme.of(context).textTheme.headline3,
        ),

      ]),
    );
  }
}
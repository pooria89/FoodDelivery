import 'package:flutter/material.dart';
import 'package:food/src/widget/order_card.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      scrollDirection: Axis.vertical,
      children: [OrderCard()],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food/src/pages/signin_page.dart';
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
      children: [
        OrderCard(),
        OrderCard(),
        OrderCard(),
        OrderCard(),
        OrderCard(),
        OrderCard(),
        OrderCard(),
        OrderCard(),
        OrderCard(),
        OrderCard(),
        OrderCard(),
        OrderCard(),
        OrderCard(),
        OrderCard(),
        _buildTotalContainer()
      ],
    );
  }

  Widget _buildTotalContainer() {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cart Total',
                style: TextStyle(fontSize: 17.0, color: Colors.black),
              ),
              Text(
                '13.0',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Discount',
                style: TextStyle(fontSize: 17.0, color: Colors.black),
              ),
              Text(
                '10.0',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tax',
                style: TextStyle(fontSize: 17.0, color: Colors.black),
              ),
              Text(
                '0',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sub Total',
                style: TextStyle(fontSize: 17.0, color: Colors.black),
              ),
              Text(
                '1.36',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SignInPage()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Center(
                child: Text(
                  'Proceed To Checkout',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

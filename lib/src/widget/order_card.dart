import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.0,
        ),
        Text(
          'Your Food Cart',
          style: TextStyle(fontSize: 25.0, color: Colors.black),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Card(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: 45.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: [
                        InkWell(
                          child: Icon(Icons.keyboard_arrow_up),
                        ),
                        Text('0'),
                        InkWell(
                          child: Icon(Icons.keyboard_arrow_down),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/sandwich.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(35.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: Offset(0.0, 5.0)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pizza',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '3.0',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.yellow.shade600,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          'Chicken',
                          style: TextStyle(fontSize: 12.0, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Icon(
                          Icons.close,
                          size: 20.0,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          'Meat',
                          style: TextStyle(fontSize: 12.0, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Icon(
                          Icons.close,
                          size: 20.0,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Text(
                'Cart Total',
                style: TextStyle(fontSize: 20.0, color: Colors.grey),
              ),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget {
  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        children: [
          Container(
            width: 360.0,
            height: 200.0,
            child: Image.asset(
              'asset/images/sandwich.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              width: 360.0,
              height: 60.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black, Colors.black26],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter)),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hot Dog',
                      style: TextStyle(fontSize: 15.0, color: Colors.red),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 15.0,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.star,
                          size: 15.0,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.star,
                          size: 15.0,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.star,
                          size: 15.0,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '12.0 Reviews',
                          style: TextStyle(fontSize: 15.0, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '22.0',
                      style:
                          TextStyle(fontSize: 15.0, color: Colors.yellowAccent),
                    ),
                    Text(
                      'Min Order',
                      style: TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

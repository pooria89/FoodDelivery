import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget {
  final String id;

  final String name;

  final String imagePath;

  final String category;

  final double price;

  final double discount;

  BoughtFoods(
      {required this.id,
      required this.name,
      required this.imagePath,
      required this.category,
      required this.price,
      required this.discount});

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
              widget.imagePath,
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
                      widget.name,
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
                        // Text(
                        //   widget.ratings.toString(),
                        //   style: TextStyle(fontSize: 15.0, color: Colors.grey),
                        // ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      widget.price.toString(),
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

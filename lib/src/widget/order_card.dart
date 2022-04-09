import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  BoxShadow(color: Colors.black12, blurRadius: 10.0,offset: Offset(0.0,5.0)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

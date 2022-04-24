import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;

  CustomListTile({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: Colors.blue,
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

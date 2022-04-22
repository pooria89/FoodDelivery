import 'package:flutter/material.dart';
import 'package:food/src/extension/widget/ImageExt.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageExtension().circleImage(
                    100.0, 100.0, 'asset/images/profile.jpg', Colors.black),
                SizedBox(width: 10.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Pooria Maleki",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0)),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text("09129374720",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0)),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Center(
                          child: Text(
                        "salam",
                        style: TextStyle(color: Colors.blue),
                      )),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

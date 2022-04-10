import 'package:flutter/material.dart';

class SignOutPage extends StatefulWidget {
  const SignOutPage({Key? key}) : super(key: key);

  @override
  _SignOutPageState createState() => _SignOutPageState();
}

class _SignOutPageState extends State<SignOutPage> {
  bool _toggleVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign Out',
              style: TextStyle(fontSize: 25.0, color: Colors.black),
            ),
            SizedBox(
              height: 60.0,
            ),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [_buildEmailField(), _buildPasswordField()],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Center(
                child: Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Email:',
      ),
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Password:',
        suffixIcon:
        IconButton(onPressed: () {
          setState(() {
            _toggleVisibility = !_toggleVisibility;
          });
        }, icon: Icon(Icons.visibility_off)),
      ),
      obscureText: _toggleVisibility,
    );
  }
}

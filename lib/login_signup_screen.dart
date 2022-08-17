import 'package:flutter/material.dart';
import 'package:la_vie_app/constants.dart';
import 'package:la_vie_app/main_screen.dart';

class LoginSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppLogo(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {}, child: Text('Sign up')),
                TextButton(onPressed: () {}, child: Text('Login')),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 32),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * .83,
              decoration: BoxDecoration(
                color: kLavieGreen,
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Row(
              children: [
                Divider(
                  height: 100.0,
                  thickness: 2.0,
                  indent: 70.0,
                  endIndent: 70.0,
                  color: Colors.grey[700],
                ),
                Text('or continue with'),
                Divider(
                  height: 100.0,
                  thickness: 2.0,
                  indent: 70.0,
                  endIndent: 70.0,
                  color: Colors.grey[700],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * .08,
                      child: Image.asset('images/google.png'),),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * .08,
                      child: Image.asset('images/fb.png')),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


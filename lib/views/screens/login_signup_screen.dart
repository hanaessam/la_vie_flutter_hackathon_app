import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:la_vie_app/constants.dart';
import 'package:la_vie_app/views/screens/main_screen.dart';

class LoginSignUpScreen extends StatefulWidget {
  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  @override
  void initState() {
    super.initState();
    // getResponse();
  }

  getResponse() async {
    try {
      var response = await Dio().post(
          'https://lavie.orangedigitalcenteregypt.com/api/v1/auth/signin',
          data: {"password": "string", "email": "string"});
      print(response);
    } catch (e) {
      print(e);
    }
  }

  bool isSignedUp = false;
  bool isLoggedIn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage('images/background.png'),
                fit: BoxFit.cover,
              )

        ),
        child: SafeArea(
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: AppLogo()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          isSignedUp = true;
                        });
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: isSignedUp ? kLavieGreen : Colors.grey,
                        ),
                      )),
                  SizedBox(width: 50,),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isSignedUp = false;
                      });
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: !isSignedUp ? kLavieGreen : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              if(isSignedUp)
                buildSignUp(),
              if(!isSignedUp)
                buildLogin(),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 32),
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * .83,
                  decoration: BoxDecoration(
                    color: kLavieGreen,
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        !isSignedUp ?  Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MainScreen())) : buildLogin();
                      });

                    },
                    child: Text(
                      isSignedUp? 'Sign Up' : 'Login',
                      style: TextStyle(color: Colors.white),
                    ),
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
                      child: Image.asset('images/google.png'),
                    ),
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
      ),
    );
  }

  Container buildLogin() {
    return Container(
            child: Column(
              children: [
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
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}

Container buildSignUp() {
  return Container(
    child: Column(
      children: [
        Row(
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only( left: 32, right: 5, bottom: 16, top: 32),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only( left: 5, right: 32, bottom: 16, top: 32),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only( left: 32, right: 32, bottom: 16),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Padding(
          padding:const EdgeInsets.symmetric(horizontal: 32),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    ),
  );
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          leading: Icon(
            Icons.supervised_user_circle,
            size: 30.0,
          ),
          title: Center(
            child: Text('User Login'),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.verified,
                size: 30.0,
              ),
            ),
          ],
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/14022699?s=460&u=f2d2076c9bcf39bbe2b3ed711d05b02d2cab82d0&v=4'),
                radius: 50.0,
              ),
              Text(
                'Shohan Hossain Ean',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'User Name',
                      prefixIcon: Icon(
                        Icons.login,
                      )),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Your E-mail',
                      prefixIcon: Icon(
                        Icons.attach_email_outlined,
                      )),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Your Password',
                      prefixIcon: Icon(
                        Icons.security_sharp,
                      )),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                textColor: Colors.teal,
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fluttertravelapp/helper/authenticate.dart';
import 'package:fluttertravelapp/screens/top_banner.dart';
import 'package:fluttertravelapp/screens/welcome_text.dart';
import 'package:fluttertravelapp/services/auth.dart';

class DisplayScreen extends StatefulWidget {

  @override
  _DisplayScreenState createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {

  AuthMethods authMethods = new AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/logo.png",
        height: 50,),
        actions: [
          GestureDetector(
            onTap: (){
              authMethods.signOut();
              Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => Authenticate(),
              ));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.exit_to_app),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBanner(),
            WelcomeText(),
          ],
        ),
      ),
    );
  }
}

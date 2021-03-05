import 'package:flutter/material.dart';
import 'package:ui_05_03/Constants.dart';
import 'package:ui_05_03/Page2.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: kBlackColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20),
              child: Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 20),
              child: Text(
                'Sign in to continue',
                style: TextStyle(fontSize: 15, color: Colors.black26),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
              child: TextField(
                decoration: InputDecoration(labelText: 'Username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
              child: TextField(
                decoration: InputDecoration(labelText: 'Password'),
              ),
            ),
            GestureDetector(onTap: (){},
              child: Padding(
                padding: const EdgeInsets.only(left: 200, top: 20),
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(color: Colors.black26),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 50),
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Page2()));
                  },
                  color: Colors.pink,
                  height: MediaQuery.of(context).size.height / 14,
                  minWidth: MediaQuery.of(context).size.width / 1,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(color: kWhiteColor),
                  ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90,top: 35),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/facebook.png'),height: 50,width: 50,),
                  SizedBox(width: 10),
                  Image(image: AssetImage('assets/twitter.png'),height: 55,width: 55,),
                  SizedBox(width: 10),
                  Image(image: AssetImage('assets/google.png'),height: 50,width: 50,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:85,top: 50),
              child: Row(
                children: [
                  Text('Don\'t have an account?',style: TextStyle(color: Colors.black26),),
                  Text('Sign up')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

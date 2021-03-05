import 'package:flutter/material.dart';
import 'package:ui_05_03/Constants.dart';
import 'package:ui_05_03/HomePage.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.redAccent])
              ),
              height: MediaQuery.of(context).size.height/2.5,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 30),
                    child: IconButton(
                        icon: Icon(Icons.arrow_back_ios,color: kWhiteColor,),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => HomePage()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 125),
                    child: CircleAvatar(backgroundImage: AssetImage('assets/images.jpg'),radius: 50,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100,top: 10),
                    child: Text('Leroy Conner',style: TextStyle(color: kWhiteColor,fontSize: 28)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120,top: 10),
                    child: Text('Sign in to continue',style: TextStyle(color: Colors.white54)),
                  ),
                ],
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
                  style: TextStyle(color: Colors.pink),
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

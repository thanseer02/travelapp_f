import 'package:flutter/material.dart';
import 'package:travelapp/home.dart';
import 'package:travelapp/hotels.dart';
import 'package:travelapp/style.dart';

import 'nav.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image:DecorationImage(image:AssetImage('assets/n.jpg'),fit:BoxFit.cover
              )
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 65),
              child: Column(
                children:  [
                  SizedBox(
                    height:70 ,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      style:log1,
                      decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.alternate_email,color: Colors.black,),
                        hintText: 'Email',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1)
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      obscureText: true,
                      style:log1,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_off_rounded,color: Colors.black,),
                          hintText: 'Password',
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 1)
                          )
                      ),
                    ),
                  ),
                Container
                  (
                  height: 40,
                    width: 300,
                    child: ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          backgroundColor: Colors.white
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>nav()));
                        }, child: Text('Login',style: TextStyle(color: Colors.black),))),
                  SizedBox(height: 20,),
                  TextButton(onPressed: (){}, child: Text('Forgot Password',style: TextStyle(color: Colors.black),)),
                  SizedBox(height: 100,),
                  Container(
                      width: 300,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white
                          ),
                          onPressed: (){}, child: Row(
                        children: [
                          Container(
                              height: 15,
                              width: 15,
                              child: Image(image: AssetImage('assets/search.png'))),
                          Text('           Sign in with Google',style: TextStyle(color: Colors.black),),

                        ],
                      ))),
                  SizedBox(height: 25,),
                  Container(
                      width: 300,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(
                                0xff3b5998
                              )
                          ),
                          onPressed: (){}, child: Row(
                        children: [
                          Icon(Icons.facebook),
                          Text('          Sign in with Facebook',style: TextStyle(color: Colors.white),),

                        ],
                      )))

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/image.jpg"),
            fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.account_circle_sharp),
                      SizedBox(width: 20,),
                      Text("Enter Email",style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Container(
                    height: 4,width: double.infinity,color: Colors.black,
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.lock),
                      SizedBox(width: 20,),
                      Text("Enter Password",style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Container(
                    height: 4,width: double.infinity,color: Colors.black,
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 50,width: 350,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 20))),
                ),
                SizedBox(height: 40,),
                Text("Don't have an account? Sign Up",style: TextStyle(fontSize: 15,color: Colors.black),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

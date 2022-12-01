import 'package:flutter/material.dart';

void main(){
  runApp(PersonalInfoApp());
}

class PersonalInfoApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height =  MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: const Center(
          child: Text(
            "Personal Info App",
            style: TextStyle(
              color: Colors.blueGrey,
            ),
          ),
        ),
      ),

      body: Container(
        height: height,
        width: width,
        color:Colors.blueGrey,
        child: Column(
          children: [
            SizedBox(height: height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('images/shady.jpeg'),
                  radius: 60,
                ),
                const SizedBox(width: 10,),
                Column(
                  children: const[
                    Text(
                      "Shady Jaradat",
                      style: TextStyle(color: Colors.black,fontSize: 25),
                    ),
                    Text(
                      "CS - IT - PSUT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),
                    ),
                  ],
                )
              ],
            ),

            Divider(
              height: height * 0.1,
              color: Colors.white70,
              thickness: 0.7,
              indent: width * 0.1,
              endIndent: width * 0.1,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: const Text(
                "bgsfhibget;b;jktdabgbdfgbkzjdfbngfdkj;gbkxfb;kfdbgk;gbndtkgn;kdtghaetgktgkdgndkgg;bdghk;dbgkjdfbg;kdbgkjndfgjkdkjgbkbdkfjgk;jdfbgkjbdfjkgbdfkbgkdfbgkdfgbkjd",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';
class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                height: 260,
                width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green
              ),
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("BMI",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.white),),
                    Text("Calculator",style: TextStyle(fontSize: 40,color: Colors.white),),
                    Container( width:double.infinity,child: Text("25.5",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.right,)),
                    Row(
                      children: [
                        Text("Condition : ",style: TextStyle(fontSize: 25,color: Colors.white),),
                        Text("Overweight",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

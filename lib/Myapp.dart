import 'package:flutter/material.dart';
class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  double _height=100;
  double _weight=50;
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
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: double.infinity,
                height: 380,
                child: Column(children: [
                  Text("Choose Data",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.green),),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("Height : ",style: TextStyle(fontSize: 25,color: Colors.black),),
                      Text("185 cm",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Slider(
                    value: _height,
                    min: 0,
                    max: 250,
                    onChanged: (height){
                      setState(() {
                        _height=height;
                      });
                    },
                    divisions: 250,
                    label: "$_height",
                    activeColor: Colors.black,
                    inactiveColor: Colors.blueGrey,
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("Weight : ",style: TextStyle(fontSize: 25,color: Colors.black),),
                      Text("85Kg",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),)
                    ],
                  ),SizedBox(height: 15,),
                  Slider(
                    value: _weight,
                    min: 0,
                    max: 150,
                    onChanged: (weight){
                      setState(() {
                        _weight=weight;
                      });
                    },
                    divisions: 250,
                    label: "$_weight",
                    activeColor: Colors.black,
                    inactiveColor: Colors.blueGrey,
                  ),

                ],),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

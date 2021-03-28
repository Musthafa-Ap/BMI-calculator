import 'package:flutter/material.dart';
class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  double _height=100;
  double _weight=50;
  int _bmi=0;
  String _condition = 'select data';
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
                    Container( width:double.infinity,child: Text("$_bmi",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.right,)),
                    Row(
                      children: [
                        Text("Condition : ",style: TextStyle(fontSize: 25,color: Colors.white),),
                        Text("$_condition",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),)
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
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("Height : ",style: TextStyle(fontSize: 25,color: Colors.black),),
                      Text("$_height cm",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Slider(
                    value: _height,
                    min: 0,
                    max: 250,
                    onChanged: ( height){
                      setState(() {
                        _height=height;
                      });
                    },
                    divisions: 250,
                    label: "$_height",
                    activeColor: Colors.black,
                    inactiveColor: Colors.blueGrey,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("Weight : ",style: TextStyle(fontSize: 25,color: Colors.black),),
                      Text("$_weight Kg",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),)
                    ],
                  ),SizedBox(height: 10,),
                  Slider(
                    value: _weight,
                    min: 0,
                    max: 150,
                    onChanged: (weight){
                      setState(() {
                        _weight=weight;
                      });
                    },
                    divisions: 150,
                    label: "$_weight",
                    activeColor: Colors.black,
                    inactiveColor: Colors.blueGrey,
                  ),
SizedBox(height: 15,),
FlatButton(
  onPressed: (){
setState(() {
  _bmi=(_weight/((_height/100)*(_height/100))).round().toInt();
    if(_bmi>=18.5 && _bmi<=25)
    {_condition='Normal';}
    else if(_bmi>25&&_bmi<=30){
      _condition='Overweight';
    }
    else if(_bmi>30){
      _condition='Obesity';
    }
    else {
      _condition='Underweight';
    }

}
  );
  },
  padding: EdgeInsets.symmetric(horizontal: 110,vertical: 15),
  child: Text("Calculate",style: TextStyle(fontSize: 20),),
  color: Colors.green,
  shape: StadiumBorder(),
  textColor: Colors.white,
)
                ],),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

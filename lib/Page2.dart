import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  int weight;
  double height;
  Page2({Key? key,required this.weight,required this.height}):super(key:key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
double BMIRESULT=0;
void initState(){

  double bmi=widget.weight+((widget.height/10)*(widget.height/10));
  BMIRESULT=bmi.toDouble();
  print("reasult:"+bmi.toStringAsFixed(3));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 40,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Colors.black,
            height: 100,
            width: double.maxFinite,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Your Reasult',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ),
          Container(width: 360,height: 450,decoration: BoxDecoration(color: Colors.white12,borderRadius: BorderRadius.circular(10)),
          child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 48.0),
                 child: Text('Normal',style: TextStyle(fontSize: 30,color: Colors.green)),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 48.0),
                 child: Text('$BMIRESULT',style: TextStyle(color: Colors.white,fontSize: 100,fontWeight: FontWeight.bold),),
               )
             ],
          ),)
        ]),
      ),
    );
  }
}


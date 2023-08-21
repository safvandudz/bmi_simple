import 'package:flutter/material.dart';

import 'Page2.dart';

class CounterScreen extends StatefulWidget {
@override
_CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter= 0;
  int counter1=0;
  double _currentSliderValue = 20;


  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  void _incrementCounter2() {
    setState(() {
      counter1++;
    });
  }

  void _decrementCounter2() {
    setState(() {
      counter1--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 88,
        title: Text("BMI CALCULATOR"),
      ),


      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                height: 250, width: double.maxFinite, color: Colors.black,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0),
                        child: Container(
                          width: 160, height: 160, decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(26),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 8)),
                          ],
                        ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Icon(Icons.male_outlined, size: 120,
                                    color: Colors.white),
                              ),
                              Text('male', style: TextStyle(color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                            ],
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0),
                        child: Container(
                          width: 160, height: 160, decoration: BoxDecoration(
                          color: Colors.white12,

                          borderRadius: BorderRadius.circular(26),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 8)),
                          ],
                        ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Icon(Icons.female, size: 120,
                                    color: Colors.white),
                              ),
                              Text('Female', style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                            ],
                          ),


                        ),
                      ),

                    ]
                ),

              ),


              Container(
                  height: 200, width: double.maxFinite, color: Colors.black,
                  child: Column(
                    children: [


                      Container(
                        width: 500, height: 180, decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(26),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(0, 8)),
                        ],
                      ),
                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text('HEIGHT', style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 38.0),
                              child: Text("$_currentSliderValue"!,style: TextStyle(color: Colors.white,fontSize: 30,)),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(top: 10.0,left: 40,right: 30),
                              child: Slider(
                                value: _currentSliderValue.toDouble(),
                                min: 0.0,
                                max: 100,
                                divisions: 100,
                                label: _currentSliderValue.round().toString(),
                                onChanged: (double value) {
                                  setState(() {
                                    _currentSliderValue = value;
                                  });
                                },
                              ),
                            ),

                          ],
                        ),

                      ),

                    ],
                  )
              ),

              Container(
                height: 250, width: double.maxFinite, color: Colors.black,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0),
                        child: Container(
                          width: 160, height: 160, decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(26),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 8)),
                          ],
                        ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text('WEIGHT', style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '$counter1',
                                  style: TextStyle(fontSize: 24.0,color: Colors.white),
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: _incrementCounter2,
                                    child: Icon(Icons.add),
                                  ),
                                  SizedBox(width: 16.0),
                                  FloatingActionButton(
                                    onPressed: _decrementCounter2,
                                    child: Icon(Icons.remove),
                                  ),
                                ],
                              ),
                            ],
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0),
                        child: Container(
                          width: 160, height: 160, decoration: BoxDecoration(
                          color: Colors.white12,

                          borderRadius: BorderRadius.circular(26),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 8)),
                          ],
                        ),
                          child: Column(
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text('AGE', style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                              ),
                              Padding
                                (
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '$_counter',
                                  style: TextStyle(fontSize: 24.0,color: Colors.white),
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: _incrementCounter,
                                    child: Icon(Icons.add),
                                  ),
                                  SizedBox(width: 16.0),
                                  FloatingActionButton(
                                    onPressed: _decrementCounter,
                                    child: Icon(Icons.remove),
                                  ),
                                ],
                              ),


                            ],
                          ),


                        ),
                      ),

                    ]
                ),

              ),

              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Page2(height:_currentSliderValue,weight:counter1),),);
              }, child: Container(
                  height: 100, width: double.maxFinite, color: Colors.red,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('calculate', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 50)),
                      ),
                    ],
                  ),


                ),
              ),


            ]
        ),


      ),
    );
  }
}

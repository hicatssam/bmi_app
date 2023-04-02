

import 'package:bmi_app/ResultScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CulclaturScreen extends StatefulWidget {
  const CulclaturScreen({Key? key}) : super(key: key);

  @override
  State<CulclaturScreen> createState() => _CulclaturScreenState();
}

class _CulclaturScreenState extends State<CulclaturScreen> {
  get child => null;
  int age = 10;
  int weight = 0;
  bool isMale = true;
  double height = 10;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('Culclater', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {

                setState(() {
                  isMale= true;
                });
              },

              child: GestureDetector(
                onTap: (){
                  setState(() {
                    isMale= true;
                  });
                },
                child: Container(
                  width: double.infinity,
                  child: Padding(
                      padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Expanded(
                           child: Container(
                         decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(20),color: isMale ? Colors.blue :Colors.black38),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                Image(
                                   image: AssetImage('assest/images/male.png'),
                                    height: 80 ,
                                    width: 80,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Male',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),),
                                ],
                              ),
                           ),
                         ),

                        SizedBox(
                          width: 15,
                        ),
                           Expanded(
                             //to make Press on Item
                             child: GestureDetector(
                               onTap: (){
                                 setState(() {
                                   isMale = false;
                                 });
                               },
                               child: Container(
                               decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),color: isMale ? Colors.black38 : Colors.blue),
                                 child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                 const  Image(
                                 image: AssetImage('assest/images/female.png'),
                                 height: 80 ,
                                 width: 80,
                               ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text('Female',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    ),),
                                  ],
                          ),
                               ),
                             ),
                           ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                 width: double.infinity,
                 child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),color: Colors.black38),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'Height',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        //لتنزيل النص للاسفل محاداة للنص الثاني
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                                fontSize: 60,
                                 fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),

                          Text(
                              'CM',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        max: 200,
                        min: 10,
                        onChanged: (value) {
                           height=value.roundToDouble();
                          setState(() {
                            height = value.roundToDouble();
                          });
                      },thumbColor: Colors.cyanAccent,)
                    ],
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black38,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 60,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'weight+',
                                  onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                  mini: true,
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                FloatingActionButton(
                                  heroTag: 'weight-',
                                  onPressed: (){
                                 setState(() {
                                   weight--;
                                 });
                                },
                                  mini: true,
                                  child: Icon(Icons.remove),
                                )
                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),color: Colors.black38),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 60,
                                color: Colors.white,
                              ),
                            ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               FloatingActionButton(
                                 heroTag: 'age+',
                                 onPressed: (){
                                setState(() {
                                  age++;
                                });

                               },
                                 mini: true,
                                 child: Icon(Icons.add),
                               ),
                               SizedBox(
                                 width: 20,
                               ),
                               FloatingActionButton(
                                 heroTag: 'age_',
                                 onPressed: (){
                                 setState(() {
                                   age--;
                                 });
                               },
                                 mini: true,

                                 child: Icon(Icons.remove),
                               )
                             ],
                           ),
                          ],

                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),color: Colors.white,),
            width: double.infinity,

            height: 70,
            child: MaterialButton(
              onPressed: () {
                //To passing data between Screens
                print(weight);
                print(height);
                print(age);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(
                          age: age, height: height, weight: weight, isMale: isMale),)
                );
              },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

            ),),

        ],




      ),
    );
  }
}

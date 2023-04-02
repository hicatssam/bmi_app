import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  final bool isMale;
  final double height;
  final int age;
  final int weight;

     ResultScreen({
    required this.age,
    required this.height,
    required this.weight,
    required this.isMale,
});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
            'My Result',
        ),
       
      ),
       

      body: Container(
        padding: EdgeInsetsDirectional.only(
          top: 220,
          start: 80,
        ),
        child: Container(
          alignment: Alignment.center,
          width: 250,
          height: 250,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)
              ,color: Colors.grey),
          child: Row(
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello Dear',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Weight is :   ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,

                        ),
                      ),
                      Text(
                        '$weight',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Text(
                        'Height is :   ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '$height',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [

                      Text('Gender :   ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,

                        ),

                      ),
                      Text(
                         '${isMale ? 'Male' : 'Female'}',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Perfect weight :  ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '72',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        ' Colories : ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '3800',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],

          ),
        ),
      ),
    );
  }
}

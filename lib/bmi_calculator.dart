import 'dart:math';

import 'package:bmi_calculator/bmi_result.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool  isMale=true;
  double height=160;
  int age=25;
  double weight=80;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("BMI Calculator",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(

          children: [
            //first part
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:isMale ? Colors.grey.shade600:Colors.black,

                          ),
                          //color: Colors.,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(image: AssetImage("assets/images/male.png"),
                              width: 90,
                              height: 90,),

                              SizedBox(
                                height: 10,
                              ),
                              Text("MALE",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                  color: Colors.white,
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: GestureDetector(
                      onTap: (){
                       setState(() {
                         isMale=false;
                       });
                      },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:isMale ? Colors.black:Colors.grey.shade600,
                          ),
                          //color: Colors.,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(image: AssetImage("assets/images/female.png"),
                              width: 90,
                              height: 90,),

                              SizedBox(
                                height: 10,
                              ),
                              Text("FEMALE",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white,
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //second part
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("HEIGHT",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text("${height.round()}",
                            style:const  TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 50,
                            ),),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("CM",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        activeColor: Colors.deepPurple,
                          inactiveColor: Colors.purple.shade500,

                          value: height,
                          max: 210,
                          min: 80,
                          onChanged: (value){
                            setState(() {
                              height=value;
                            });
                          })

                    ],
                  ),
                ),
              ),
            ),
            //third part
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("age",style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                            Text("${age.round()}",style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              color: Colors.white,
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                  heroTag: "age+",mini: true,
                                backgroundColor: Colors.deepPurple,
                                child: const Icon(Icons.add),
                                ),
                                const SizedBox(width:40 ,),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age--;
                                  });

                                },
                                  heroTag: "age-",mini: true,
                                backgroundColor: Colors.deepPurple,
                                  child: const Icon(Icons.remove),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("weight",style:  TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                            Text("${weight.round()}",style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              color: Colors.white,
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                  heroTag: "weight+",mini: true,
                                backgroundColor: Colors.deepPurple,
                                  child: const Icon(Icons.add),
                                ),
                                const  SizedBox(width:40 ,),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    weight--;
                                  });

                                },
                                  heroTag: "weight-",mini: true,
                                backgroundColor: Colors.deepPurple,
                                  child: const Icon(Icons.remove),
                                ),
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
             //fourth part
             Container(
               color: Colors.deepPurple,

               width: double.infinity,

               child: MaterialButton(
                 onPressed: (){
                   double result=weight/pow(height/100, 2);
                   String? state;
                   if(result < 18.5){
                     state='under weight';
                   }else if(18.5< result && result < 24.9 ){
                     state='normal';
                   }else if(25< result && result < 29.9){
                     state='Overweight';
                   }else if(result >30 ){
                     state='Obese';
                   }
                   if (kDebugMode) {
                     print(result.round());
                   }
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder:(context)=>BmiResult(
                            age: age,
                            isMail:isMale ,
                            result: result.round(),
                            state: state!,
                          )),
                  );
                 },
                 child:const  Text("CALCULATE",
                 style:  TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   color: Colors.white
                 ),),
               ),


            ),

          ],
        ),
      ),



    );
  }
}

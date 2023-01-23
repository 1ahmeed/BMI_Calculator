import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {

 final int result;
final bool isMail;
final int age;

 const BmiResult({super.key,
  required this.result, required this.isMail, required this.age,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);

          },

        ),
        backgroundColor: Colors.deepPurple,
        title: const Text("BMI Result",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),


      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.deepPurple,
                  ),
                  height: 50,
                  width: 300,
                  child: Text("gender: ${isMail? 'male':'female'}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                    textAlign: TextAlign.center,
                  ),



                ),
              ],
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    width: 200,
                    height: 50,

                    child: Text("result:$result", style:
                    const TextStyle(
                              fontSize: 40,
                            color: Colors.white,
                          ),
                    textAlign: TextAlign.center,),

                    ),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: 200,
                      height: 50,

                      child: Text("age:$age", style: const TextStyle(
                              fontSize: 40,
                            color: Colors.white,
                          ),
                        textAlign: TextAlign.center,),
                      ),
                  ),




                ],

              ),
            ),



//Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("gender:${isMail? 'male':'female'}",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 40,
//                         fontWeight: FontWeight.bold,
//                       ),),
//                       Text("result:$result", style: TextStyle(
//                           fontSize: 40,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),),
//                       Text("age:$age", style: TextStyle(
//                           fontSize: 40,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),),
//
//                     ],
//                   ),
          ],
        ),
      ),
    );
  }
}

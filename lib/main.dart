import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xff48c6ef),Color(0xff6f86d6)],
            begin: Alignment.topLeft,
            end: Alignment.topRight)
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: no1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    width: 2,
                    color: Color(0xff6f86d6)
                  )
                ),
                label: Text("Enter First Number"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    width: 2
                  )
                )
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: no2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    color: Color(0xff6f86d6),
                    width: 2
                  )
                ),
                label: Text("Enter Second Number"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    width: 2
                  )
                )
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  var no1 = int.parse(no1Controller.text.toString());
                  var no2 = int.parse(no2Controller.text.toString());

                  var sum = no1+no2;

                  result = "The Addition of $no1 and $no2 is $sum ";

                  setState(() {
                  });
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff6f86d6)
                    ),
                    child:Text("ADD",style: TextStyle(color: Colors.white),)),
                ElevatedButton(onPressed: (){
                  var no1 = int.parse(no1Controller.text.toString());
                  var no2 = int.parse(no2Controller.text.toString());

                  var sub = no1 - no2;

                  result = "The Subtraction of $no1 and $no2 is $sub";

                  setState(() {
                  });
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff6f86d6)
                    ),
                    child:Text("SUB",style: TextStyle(color: Colors.white),)),
                ElevatedButton(onPressed: (){
                  var no1 = int.parse(no1Controller.text.toString());
                  var no2 = int.parse(no2Controller.text.toString());

                  var mult = no1 * no2;

                  result = "The Multiplication of $no1 and $no2 is $mult";

                  setState(() {
                  });
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff6f86d6)
                    ),
                    child: Text("MULT",style: TextStyle(color:Colors.white),)),
                ElevatedButton(onPressed: (){
                  var no1 = int.parse(no1Controller.text.toString());
                  var no2 = int.parse(no2Controller.text.toString());

                  var div = no1/no2;

                  result = "The Division of $no1 and $no2 is ${div.toStringAsFixed(2)}";

                  setState(() {
                  });
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff6f86d6)
                    ),
                    child:Text("DIV",style:TextStyle(color: Colors.white),)),
              ],
            ),
            SizedBox(height: 12,),
            Text(result,style: TextStyle(fontSize: 20),)
          ],
        ),
      )
    );
  }
}

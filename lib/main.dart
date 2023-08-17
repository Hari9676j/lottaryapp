import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
     MyApp({super.key});
Random random = Random();  
  int x = 8 ;

  @override
  Widget build(BuildContext context)  {
    print('rebuild');
    return  MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text('Lottery app'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Center(child: Text('lottary winning number is 4')),
              SizedBox(height: 20,),
              Container(
                height: 250,
                decoration: BoxDecoration(
                color: Colors.yellow.withOpacity(.3),
                  borderRadius: BorderRadius.circular(10)
              ),
               child: Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: x == 5 ?
                 Text('condition match'):
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Icon(Icons.done_all, color: Colors.amber, size: 35,),
                     Text('Congratulation  your number is won the lottery ',textAlign: TextAlign.center,)
                   ],
                 ),
                 ),
               ),
           ]
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x = random.nextInt(6);
            print(x);
            setState((){});

          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

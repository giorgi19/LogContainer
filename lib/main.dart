import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
_MyAppState createState() =>_MyAppState();
}

class _MyAppState extends State<MyApp> {
List messages;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('LogContainer'),
        ),
        body: ListView.builder(
          itemBuilder: (ctx,index){
            return MessageContainerWidget();
            },
          itemCount: 5,
          )
      ),
    );
  }
}

class MessageContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.grey.withOpacity(0.1),
      //alignment: AlignmentDirectional.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children:[
            Icon(Icons.person,color: Colors.green,),
           SizedBox(width: 5,),
            Column(children: [
              Text('Giorgi Nadiradze'),
              SizedBox(height:5),
              Text('added 8 days ago')
            ],)
          ]),
          SizedBox(height:5),
          Text('Messages Text,Messages Text Messages Text'),
          Text('Messages Text')
      ],),
    );
  }
}


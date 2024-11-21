import 'package:flutter/material.dart';

import 'http.dart';
class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API SESSION'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: 300,
            color: Colors.red,
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Http()),
            );



          }, child: Text('HTTP')),

          SizedBox(
            height: 20,
          ),
          TextButton(onPressed: (){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Http()),
            );

          }, child: Text('Dio')),

        ],
      ),
    );
  }
}

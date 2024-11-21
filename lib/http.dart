import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Http extends StatefulWidget {
  const Http({Key? key}) : super(key: key);

  @override
  State<Http> createState() => _HttpState();
}

Future<void> fetchdata() async {
  final url=Uri.parse('https://jsonplaceholder.typicode.com/posts');
final response= await http.get(url);
if(response.statusCode==200){
  final data=json.decode(response.body);
  print(data);
}

}
class _HttpState extends State<Http> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(onPressed: (){
            fetchdata();


          }, child: Text('click ')),


        ],
      ),
    );
  }
}

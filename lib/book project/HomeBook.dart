import 'dart:convert';

import 'package:apisession/book%20project/book.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeBook extends StatefulWidget {
  const HomeBook({Key? key}) : super(key: key);



  @override
  State<HomeBook> createState() => _HomeBookState();
}

Future<List<Book>> fetchbooks() async {
  final response =await http.get(Uri.parse('https://openlibrary.org/people/mekBot/books/want-to-read.json'));
  if(response.statusCode==200){
    
    final List<dynamic> data=json.decode(response.body)['reading_log_entries'];
    return data.map((entry)=>Book.fromJson(entry)).toList();


  }else{

    throw Exception('Faild load books');

  }
  
  
}

class _HomeBookState extends State<HomeBook> {
  @override
  void initState() {
fetchbooks();
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Book>>
        (future: fetchbooks(),

          builder: (context,snapshot) {
          final books=snapshot.data!;
          return ListView.builder(
            itemCount: books.length,
            itemBuilder: (BuildContext context, int index) {


              final book=books[index];
              return ListTile(
                leading: Image.network(book.coverletter),
                title: Text(book.title),
                subtitle: Text(book.auther),
                trailing: Text(book.fristpublishyear),
              );
            },


          );

          })
    );
  }
}

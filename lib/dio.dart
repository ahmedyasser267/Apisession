import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioExample extends StatefulWidget {
  const DioExample({Key? key}) : super(key: key);

  @override
  State<DioExample> createState() => _DioExampleState();
}

Future<void> fetchData() async {
  Dio dio = Dio();
  try {
    final response = await dio.get('https://jsonplaceholder.typicode.com/posts');
    print('Response Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}

class _DioExampleState extends State<DioExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: () async {
              await fetchData(); // استدعاء الدالة عند الضغط
            },
            child: Text('Fetch Data'),
          ),
        ],
      ),
    );
  }
}

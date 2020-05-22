import 'package:flutter/material.dart';
import 'package:post_appraff/posts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JsonPlaceHolder',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,//quitamos el banner de prueba
      home: PostsPage(),
    );
  }
}

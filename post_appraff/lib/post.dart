import 'package:flutter/cupertino.dart';

class Post{
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({ this.userId,
    this.id,
    this.title,
    this.body});
// lo que obtenemos de json lo pasamos a un post() que es lo que veremos en nuestra app
  factory Post.fromJson(Map<String,dynamic> json){// metodo factori llamado Post.fromJson y toma los datos en bruto y los mapea con un valor dinamico
    return Post(userId: json['userId'] as int ,
      body: json['body'] as String ,
      id: json['id'] as int,
      title: json['title'] as String,);
  }

}

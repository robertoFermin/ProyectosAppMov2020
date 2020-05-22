import 'dart:convert';

import 'package:http/http.dart';
import 'package:post_appraff/post.dart';

class Url{
  final String postsUrl ="https://jsonplaceholder.typicode.com/posts";
//en este future se consigue la url de el Post
  Future<List<Post>>getPosts() async{// nos devolvera en un futuro una lista de post de manera asincronica
    Response response= await get(postsUrl);// nos regresa la respuesta de el archivo json

    if(response.statusCode==200){// aqui si la busqueda es exitosa y nos devolvera el body
      List<dynamic> body =jsonDecode(response.body);//aqui pasa la cadena sin procesar y el JsonDecode busca los valores

      List<Post> posts = body.map((dynamic thing)=> Post.fromJson(thing)).toList();// se enlista los posts de acuerdo a la clase post
      return posts;

    }else {// si no se pude obtener los posts
      throw "No puedo conseguir los posts";
    }
  }
}
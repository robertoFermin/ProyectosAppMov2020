import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:post_appraff/post.dart';

class PostComents extends StatelessWidget{
  final Post post;

  PostComents({Key key,  this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(// diseño de la app al presionar un post
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text("Comentarios", style: GoogleFonts.pangolin(fontSize: 18),),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Card(elevation: 10.0,//creacion de card para guardar los comentarios
              color: Colors.white,
              child: Column(
                children: <Widget>[//se enlista cada una de los datos obtenidos
                  ListTile(
                    title: Center(child: Text("Titulo", style: GoogleFonts.bitter(fontSize: 18) ,)),
                    subtitle: Center(child: Text(post.title, style: GoogleFonts.abel(fontSize: 18))),//mandamos llamara el titulo de post.dart
                  ),
                  ListTile(
                    title: Center(child: Text("Id", style: GoogleFonts.bitter(fontSize: 18))),
                    subtitle: Center(child: Text("${post.id}", style: GoogleFonts.abel(fontSize: 18))),//mandamos llamara el id de post.dart
                  ),
                  ListTile(
                    title: Center(child: Text("Cuerpo", style: GoogleFonts.bitter(fontSize: 18))),
                    subtitle: Center(child: Text(post.body, style: GoogleFonts.abel(fontSize: 18))),//mandamos llamara el body de post.dart
                  ),
                  ListTile(
                    title: Center(child: Text("Id Usuario", style: GoogleFonts.bitter(fontSize: 18))),
                    subtitle: Center(child: Text("${post.userId}", style: GoogleFonts.abel(fontSize: 18),)),//mandamos llamara el userid de post.dart
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:post_appraff/post.dart';
import 'package:post_appraff/post_coments.dart';
import 'package:post_appraff/url.dart';

final Url url = Url();
class PostsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          "App Posts",style: GoogleFonts.pressStart2P(),//cambio de fuente del app bar
        ),
      ),
      body:  FutureBuilder(future: url.getPosts(),//cuando haya dataos se rellenara la lista
          builder: (BuildContext context , AsyncSnapshot<List<Post>> snapshot){
            if (snapshot.hasData){//si hay datos se enlistan los post
              List<Post> posts = snapshot.data;

              return ListView(//se construye la lista de los 100 posts
                children: posts.map((Post post)=> Card(  elevation: 10.0,
                  child: ListTile(leading: FlutterLogo(),
                    title: Text(post.title, style: GoogleFonts.bitter(fontSize: 18)),
                    subtitle: Text(post.id.toString(),style: GoogleFonts.bitter(fontSize: 18)),
                    onTap: ()=> Navigator.of(context).push(MaterialPageRoute(// se hace lafuncionalidad al presionar un post
                        builder: (context)=> PostComents(post: post,)
                    )
                    ),
                  ),
                )).toList(),
              );
            }
            return Center(child: CircularProgressIndicator());//indicador de carga de la app
          }
      ),

    );
  }

}
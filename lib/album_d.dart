import 'package:flutter/material.dart';
import 'package:laba8/music.dart';
//import 'albums_screen.dart';

//-------СПИСОК ТРЕКОВ АЛЬБОМА-------//
class AlbumDetailScreen extends StatelessWidget{
  AlbumDetailScreen(
      {super.key,
        required this.nameAlbum
      });

  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  final String? nameAlbum;
  String _nameMusic='';
  String _nameAuthor='';

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('Album "$nameAlbum"'),
            backgroundColor: Colors.deepOrange
        ),

        body: Form(
            key: _form,
            child: ListView(
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(top: 15.0,right: 25.0,left: 25.0),
                    child: ListTile(
                        leading: const Icon(Icons.queue_music),
                        title: const Text('Track 1'),
                        subtitle: const Text('Author 1'),
                        trailing: const Icon(Icons.play_arrow),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> MusicScreen(
                                  nameMusic: _nameMusic='Track 1',
                                  nameAuthor: _nameAuthor='Author 1'
                              )));
                        }
                    )
                ),

                Padding(padding: const EdgeInsets.only(top: 15.0,right: 25.0,left: 25.0),
                    child: ListTile(
                        leading: const Icon(Icons.queue_music),
                        title: const Text('Track 2'),
                        subtitle: const Text('Author 2'),
                        trailing: const Icon(Icons.play_arrow),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> MusicScreen(
                                  nameMusic: _nameMusic='Track 2',
                                  nameAuthor: _nameAuthor='Author 2'
                              )));
                        }
                    )
                ),

                Padding(padding: const EdgeInsets.only(top: 15.0,right: 25.0,left: 25.0),
                    child: ListTile(
                        leading: const Icon(Icons.queue_music),
                        title: const Text('Track 3'),
                        subtitle: const Text('Author 3'),
                        trailing: const Icon(Icons.play_arrow),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> MusicScreen(
                                  nameMusic: _nameMusic='Track 3',
                                  nameAuthor: _nameAuthor='Author 3'
                              )));
                        }
                    )
                ),
              ],
            )
        )
    );
  }
}
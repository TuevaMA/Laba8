import 'package:flutter/material.dart';
import 'package:laba8/album_d.dart';

void main(){runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
        home: AlbumsScreen());
  }
}

//-------СТРАНИЦА АЛЬБОМОВ-------//
class AlbumsScreen extends StatefulWidget{
  const AlbumsScreen({super.key});

  @override
  State<AlbumsScreen> createState() => _AlbumsScreenState();
}


class _AlbumsScreenState extends State<AlbumsScreen>{
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  String _nameAlbum=' ';
  final nameAlbumController = TextEditingController();

  @override
  void dispose() {
    //final nameAlbumController = TextEditingController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text('Music Player\n        Albums'),
            backgroundColor: Colors.deepOrange
        ),

        body: Form(
            key: _form,
            child: ListView(
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(top: 15.0,right: 25.0,left: 25.0),
                    child: ListTile(
                        leading: const CircleAvatar(backgroundImage: NetworkImage('https://e-cdn-images.dzcdn.net/images/cover/8b6cf17c815d0170272c32c9a80e8900/264x264-000000-80-0-0.jpg')),
                        title: const Text('nights'),
                        subtitle: const Text('By Индия'),
                        trailing: const Icon(Icons.audiotrack),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> AlbumDetailScreen(
                                  nameAlbum: _nameAlbum='nights'
                              )));
                        }
                    )
                ),

                Padding(padding: const EdgeInsets.only(top: 15.0,right: 25.0,left: 25.0),
                    child: ListTile(
                        leading: const CircleAvatar(backgroundColor: Colors.purpleAccent),
                        title: const Text('Album name 2'),
                        subtitle: const Text('Group name 2'),
                        trailing: const Icon(Icons.audiotrack),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> AlbumDetailScreen(
                                  nameAlbum: _nameAlbum='Album name 2'
                              )));
                        }
                    )
                ),

                Padding(padding: const EdgeInsets.only(top: 15.0,right: 25.0,left: 25.0),
                    child: ListTile(
                        leading: const CircleAvatar(backgroundColor: Colors.purpleAccent),
                        title: const Text('Album name 3'),
                        subtitle: const Text('Group name 3'),
                        trailing: const Icon(Icons.audiotrack),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> AlbumDetailScreen(
                                  nameAlbum: _nameAlbum='Album name 3'
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
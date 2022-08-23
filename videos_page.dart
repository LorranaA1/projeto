import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:sciencenotes/domain/video.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({
    Key? key,
  }) : super(key: key);

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  final videos = Videos.videos;
  @override
  Widget build(BuildContext context) {
    var length;
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (BuildContext context, String video){
        return ListTile(
          leading: Image.asset('lib/assets/images/cinematica.png'),
          title: Text(Videos[videos].titulo),
          trailing: Text(Videos[videos].tempoDuracao),
        ),
      );
        padding: EdgeInsets.all(8.0),
        itemCount: Videos.length, 
    }
}
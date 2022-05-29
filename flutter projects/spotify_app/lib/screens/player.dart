import 'package:flutter/material.dart';
import 'package:spotify/models/song.dart';

class Player extends StatefulWidget {
  late Song s;
  Player(Song song)
  {
      
  }

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
import 'package:another_flushbar/flushbar.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:shake/shake.dart';
import 'package:spotify/models/song.dart';
import 'package:spotify/screens/player.dart';
import 'package:spotify/utils/api_client.dart';

class ListOfSongs extends StatefulWidget {
  const ListOfSongs({Key? key}) : super(key: key);

  @override
  _ListOfSongsState createState() => _ListOfSongsState();
}

class _ListOfSongsState extends State<ListOfSongs> {
  AudioPlayer audioPlayer = AudioPlayer();
  List<Song> songs = [];
  
  TextEditingController tcsingername = TextEditingController();

  
  var _icon = Icons.play_arrow;

  int _flag = 0;
  dynamic error;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
       
  }

  _toNavigate(Song song){
  Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Player(song)));
    });
  }
  
  

  getSongList(List<Song> songs) {
    this.songs = songs;
    setState(() {});
  }

  getSongError(dynamic error) {
    this.error = error;
    setState(() {});
  }

  pauseSong() {
    _icon = Icons.play_arrow;
    audioPlayer.pause();
  }

  playSong(url) {
    _icon = Icons.pause;
    audioPlayer.play(url);
  }

  searchSong(String value) {
    ApiClient client = ApiClient();
    client.getSongs(getSongList,getSongError,);
  }

  Center _showLoading() {
    return Center(child: CircularProgressIndicator());
  }

  Expanded _printSong(double size) {
    return Expanded(
      child: SizedBox(
        height: size - 300,
        child: ListView.builder(
          itemBuilder: (BuildContext ctx, int index) {
            return ListTile(
              onTap: _toNavigate(songs[index]),
              leading: Image.network(songs[index].image),
              title: Text(songs[index].trackName),
              subtitle: Text(songs[index].artistName),
              trailing: IconButton(
                  onPressed: () {
                    print("Song Play ${songs[index].audio}");
                    if (_flag == 0) {
                      _flag = 1;
                      playSong(songs[index].audio);
                      Flushbar(
                        duration: Duration(seconds: 3),
                        title: "Playing ${songs[index].trackName}",
                        message: "${songs[index].artistName}",
                      ).show(context);
    
                      setState(() {
                        songs[index].isplaying = true;
                      });
                    } else {
                      _flag = 0;
                      pauseSong();
                       Flushbar(
                        duration: Duration(seconds: 5),
                        title: "Paused ${songs[index].trackName}",
                        message: "${songs[index].artistName}",
                      ).show(context);
                      ShakeDetector detect = ShakeDetector.autoStart(onPhoneShake: ()
                      {
                          playSong(songs[index+1].audio);
                      });
    
                      setState(() {
                        songs[index].isplaying = false;
                      });
                    }
                  },
                  icon: Icon(
                    (songs[index].isplaying == true)
                        ? Icons.pause
                        : Icons.play_arrow,
                    size: 30,
                    color: Colors.redAccent,
                  )),
            );
          },
          itemCount: songs.length,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size DeviceSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('Songs'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: TextField(
                
                onChanged: (String value) => searchSong(value),
                controller: tcsingername,
                decoration: InputDecoration(label: Text("Enter Singer Name")),
              ),
            ),
            Container(
                child: (songs.length == 0)
                    ? _showLoading()
                    : _printSong(DeviceSize.height)),
          ],
        )

        //TextField(decoration: InputDecoration(label: Text("Enter Singer Name")),),
        );
  }
}

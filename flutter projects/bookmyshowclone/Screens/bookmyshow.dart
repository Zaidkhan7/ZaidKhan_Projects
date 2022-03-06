import 'package:bookmyshow/models/movie_info.dart';
import 'package:bookmyshow/repo/Movie_operations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bookmyshow extends StatelessWidget {
  List<Movie_Info> movie_info = [];
  Bookmyshow() {
    Movie_Operations mo = Movie_Operations.getInstance();
    movie_info = mo.getmovieinfo();
  }

  static const IconData location_on_rounded =
      IconData(0xf884, fontFamily: 'MaterialIcons');

  List<Widget> _getMoviePost(Size deviceSize) {
    List<Widget> list = movie_info.map((movie) {
      return Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Card(
                  child: Image.network(movie.movie_url),
                ),
              ),
              Positioned(
                  width: deviceSize.width - 20,
                  bottom: 30,
                  left: 260,
                  child: Text(
                    movie.movie_votes + ' votes',
                    style: GoogleFonts.arimo(
                        textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            backgroundColor: Colors.black54)),
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 11, 0, 0),
            child: Row(
              children: [
                Text(movie.movie_name,
                    style: GoogleFonts.arimo(
                        textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w700))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(movie.language + '   ' + movie.movie_type,
                    style: GoogleFonts.arimo(
                        textStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600))),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 10),
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.all(6.0),
                            primary: Colors.white,
                            backgroundColor: Colors.red,
                            textStyle: TextStyle(fontSize: 20)),
                        child: Text("Book")))
              ],
            ),
          ),
        ],
      );
    }).toList();

    return list;
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text("BookMyShow"),
          elevation: 0,
          actions: [
            Icon(location_on_rounded),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 10, 10, 10),
                  child: Row(children: [
                    Icon(Icons.language),
                    SizedBox(width: 10),
                    Text(
                      "All Languages",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(fontSize: 15)),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(Icons.chair),
                    SizedBox(width: 10),
                    Text(
                      "Cinamas",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(fontSize: 15)),
                    )
                  ]),
                ),
              ],
            ),
            Column(
              children: _getMoviePost(deviceSize),
            )
          ],
        )));
  }
}

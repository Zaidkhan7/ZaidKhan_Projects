import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news_viewer/modules/models/NewsModel.dart';
import 'package:news_viewer/modules/repo/news_repo.dart';
import 'package:news_viewer/modules/services/news_service.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  int pageno=0;
  List<NewsModel> favorite_list = [];
  List<BottomNavigationBarItem> navigationbaritems = [
    BottomNavigationBarItem(icon: Icon(Icons.list), label: "News"),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: "Favs",
    )
  ];
  NewsRepo newsrepo = NewsRepo.getInstance();


  @override
  Widget build(BuildContext context) {
    Size devicesize = MediaQuery.of(context).size;
    return Scaffold(

      
        body: SafeArea(
        child: Column(children: [
          FutureBuilder<List<NewsModel>>(
            future: newsrepo.getNews(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return  Center(
                  heightFactor: 15,
                  child: CircularProgressIndicator(color: Colors.black),
                );
              } else if (snapshot.hasError) {
                return Text("An Error Occured");
              } else {
                

////////////////////////// This is expanded ///////////////////////////
                return Expanded(
                  child: PageView.builder(
                      itemCount: snapshot.data?.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                          
                       
                        return Column(
                          children: [
                            snapshot.data![index].imageUrl==""?
                            Column(children: [
                              SizedBox(height: 20,),
                              Text("No Image Found", style: TextStyle(fontSize: 20),),
                            Icon(Icons.error , size: 50,)],) 
                            :
                            Image.network(snapshot.data![index].imageUrl),
                            
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Text(
                                  snapshot.data![index].title,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                                Padding(
                                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                                child: Text(
                                  snapshot.data![index].description,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      ),
                                )),
                                Padding(
                                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                                child: Text(
                                  snapshot.data![index].content,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      ),
                                )),
                                 Padding(
                                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                                child: Text(
                                  snapshot.data![index].author,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      ),
                                )),
                                 

                              


                                
                          ],
                        );
                      }),
                );
                
              }
            },
          ),
           
        ]),
      ), 
  
    );
  }
}

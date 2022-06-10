import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '/modules/models/product.dart';
import '/modules/repo/product_repo.dart';
import 'package:shoppingapp/modules/repo/product_repo.dart';

class ViewProduct extends StatelessWidget {
  ProductRepository repo = ProductRepository();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: StreamBuilder(
        stream: repo.readRealTime(),
        builder: (BuildContext bt, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('Error '),
            );
          }
          if (!snapshot.hasData) {
            return Center(
              child: Text('Loading...'),
            );
          } else {
            return ListView.builder(
              //scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (BuildContext ctx, int index) {
                // Single Row
                Object? object = snapshot.data?.docs[index].data();
                print("Object is $object");
                print("Type ${object.runtimeType}");
                String imageURL = "";
                String name = "";
                String desc = "";
                if (object != null) {
                  Map map = object as Map;
                  imageURL = map["url"]!;
                  name = map["name"]!;
                  desc = map["desc"]!;
                }

                //return Center(child: Text('Data Comes'));
                return ListTile(
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                      IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                    ],
                  ),
                  leading: Container(
                    child: Image.network(imageURL),
                  ),
                  title: Text(name),
                  subtitle: Text(desc),
                );
              },
            );
          }
        },
      ),
    );
  }

  /* @override
  Widget build(BuildContext context) {
    ProductRepository repo = ProductRepository();
    return Container(
      child: FutureBuilder(
        future: repo.read(), // Firebase read operation , which give future
        builder: (BuildContext ctx, AsyncSnapshot<List<Product>> snapshot) {
          ConnectionState state = snapshot.connectionState;

          if (state == ConnectionState.waiting) {
            // Loading
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            print('Error Details....');
            print(snapshot.error);
            return const Center(
              child: Text(
                'Some Error in Product Reterive',
                style: TextStyle(fontSize: 40, color: Colors.red),
              ),
            );
          } else {
            // It has Data
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext b, int index) {
                return ListTile(
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                      IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                    ],
                  ),
                  leading: Container(
                    child: Image.network(snapshot.data![index].url),
                  ),
                  title: Text(snapshot.data![index].name),
                  subtitle: Text(snapshot.data![index].desc),
                );
              },
            );
          }
        },
      ),

      // child: Text(
      //   'View Product',
      //   style: TextStyle(fontSize: 40),
      // ),
    );
  }*/
}

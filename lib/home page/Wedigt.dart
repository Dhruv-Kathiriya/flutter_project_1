import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Appproduct.dart';
import '../detalis.dart';

Widget getpro({required String title, required String catagoryname}) {
  return Builder(builder: (context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: allproducts
                  .map(
                    (e) => (e['catagory'] == catagoryname)
                        ? GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (Dk) => Detalis()));
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              height: 330,
                              width: 200,
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 5),
                                      blurRadius: 5,
                                      spreadRadius: -2,
                                      color: Colors.grey),
                                ],
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(20),
                                                    topLeft:
                                                        Radius.circular(20)),
                                            image: DecorationImage(
                                              image:
                                                  NetworkImage(e['thumbnail']),
                                              fit: BoxFit.cover,
                                            )),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            )),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "${e['title']}",
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                "\$ ${e['price']}",
                                                style: const TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                              RatingBar.builder(
                                                initialRating: 3,
                                                minRating: 1,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                itemCount: 5,
                                                itemSize: 25,
                                                itemPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 4.0),
                                                itemBuilder: (context, _) =>
                                                    Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                                onRatingUpdate: (rating) {
                                                  print(rating);
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  )
                  .toList()),
        )
      ],
    );
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'Wedigt.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("homepage"),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.shopping_cart,
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getpro(catagoryname: "smartphones", title: "Smartphone"),
            ],
          ),
        ));
  }
}

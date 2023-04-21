import 'package:flutter/material.dart';

import 'petCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: PetShopUI(),
    );
  }
}

class PetShopUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Shop'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Available Pets.....',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PetCard(
            price: 22000,
            name: 'Buddy',
            age: '2 years',
            breed: 'Golden Retriever',
            image:
                'https://static.vecteezy.com/system/resources/previews/006/305/541/original/cute-puppy-golden-retriever-standing-in-cardboard-box-on-green-nature-blur-background-animal-greeting-concept-free-photo.JPG',
          ),
          PetCard(
            price: 10000,
            name: 'Fluffy',
            age: '1 year',
            breed: 'Persian',
            image:
                'https://st4.depositphotos.com/36741118/38061/i/1600/depositphotos_380614580-stock-photo-cute-funny-red-light-pekingese.jpg',
          ),
          PetCard(
            price: 45000,
            name: 'Max',
            age: '3 years',
            breed: 'German Shepherd',
            image:
                'https://cdn.shopify.com/s/files/1/2456/1591/files/brodie_gsd_large.JPG?v=1588952618',
          ),
          PetCard(
            price: 3000,
            name: 'Ruby',
            age: '6years',
            breed: 'Laborador',
            image:
                'https://images.unsplash.com/photo-1604658768979-ca1ef26b2324?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bGFicmFkb3IlMjBwdXBweXxlbnwwfHwwfHw%3D&w=1000&q=80',
          ),
        ],
      ),
      backgroundColor: Colors.yellow,
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'petdetail.dart';

class PetCard extends StatelessWidget {
  final String name;
  final String age;
  final String breed;
  final String image;
  final double price;

  const PetCard({
    Key? key,
    required this.name,
    required this.age,
    required this.breed,
    required this.image,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PetDetailScreen(
                    price: price,
                    name: name,
                    age: age,
                    breed: breed,
                    image: image))),
        child: Card(
          color: Colors.yellow.shade50,
          elevation: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(image),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "$name -\$$price",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 500,
              height: 400,
              child: const Image(
                  image: ResizeImage(AssetImage('assets/images.png'),
                      width: 500, height: 400)),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 10,
                    offset: const Offset(1, 3),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Container(
                child: Column(
                  children: [
                    Text("data")
                    // nim, nama, studi, fakultas, ttl, jenis_kelamin, email, password
                  ]
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

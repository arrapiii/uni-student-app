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
      debugShowCheckedModeBanner: false,
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
              margin: const EdgeInsets.only(bottom: 20),
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
              height: 420,
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
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 35),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 25),
                            child: Row(
                              children: [
                                const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Abdul Bahar Kasim",
                                        style: TextStyle(
                                            fontFamily: "Roboto-Bold",
                                            fontSize: 26,
                                            color: Color(0xE2141414)),
                                      ),
                                      Text(
                                        "NIM : 94832094820",
                                        style: TextStyle(
                                            fontFamily: "Roboto", fontSize: 18),
                                      ),
                                      
                                    ]),
                                Container(
                                  margin: EdgeInsets.only(left:55),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                              minimumSize: const Size(60, 60),
                                              backgroundColor:
                                                  const Color(0xFFEB5F3C)),
                                          child: Icon(
                                            Icons.arrow_back,
                                            size: 20,
                                          ),
                                        )
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          Divider(color: Color(0xE2141414)),
                          const Text(
                            "Biodata Lengkap",
                            style: TextStyle(
                                fontFamily: "Roboto-Bold",
                                fontSize: 26,
                                color: Color(0xE2141414)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bidang Studi",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xE2141414),
                                  ),
                                ),
                                Text(
                                  "Ilmu Senjata Nuklir",
                                  style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: 15,
                                      color: Color(0xBA141414)),
                                ),
                              ]),
                          const SizedBox(
                            height: 8,
                          ),
                          const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Fakultas",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xE2141414),
                                  ),
                                ),
                                Text(
                                  "MIPA",
                                  style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: 15,
                                      color: Color(0xBA141414)),
                                ),
                              ]),
                          const SizedBox(
                            height: 8,
                          ),
                          const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "TTL",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xE2141414),
                                  ),
                                ),
                                Text(
                                  "1999-01-17",
                                  style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: 15,
                                      color: Color(0xBA141414)),
                                ),
                              ]),
                          const SizedBox(
                            height: 8,
                          ),
                          const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jenis-Kelamin",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xE2141414),
                                  ),
                                ),
                                Text(
                                  "Laki-Laki",
                                  style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: 15,
                                      color: Color(0xBA141414)),
                                ),
                              ]),
                          const SizedBox(
                            height: 8,
                          ),
                          const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Email",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xE2141414),
                                  ),
                                ),
                                Text(
                                  "abdulkasim9@yahoo.co.id",
                                  style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: 15,
                                      color: Color(0xBA141414)),
                                ),
                              ]),
                          const SizedBox(
                            height: 8,
                          ),
                        ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

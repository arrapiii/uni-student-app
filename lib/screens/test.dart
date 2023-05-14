import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Mahasiswa> fetchAlbum() async {
  final response =
      await http.get(Uri.parse('http://192.168.18.8:8000/api/mahasiswa'));

  if (response.statusCode == 200) {
    return Mahasiswa.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load data');
  }
}

class Mahasiswa {
  int id;
  String nama;
  String studi;
  String fakultas;
  String ttl;
  String jenisKelamin;
  String email;
  String password;
  dynamic deletedAt;
  String createdAt;
  String updatedAt;

  Mahasiswa({
    required this.id,
    required this.nama,
    required this.studi,
    required this.fakultas,
    required this.ttl,
    required this.jenisKelamin,
    required this.email,
    required this.password,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Mahasiswa.fromJson(Map<String, dynamic> json) {
    print('JSON: $json');
    return Mahasiswa(
      id: json["id"] ?? 0,
      nama: json["nama"] ?? '',
      studi: json["studi"] ?? '',
      fakultas: json["fakultas"] ?? '',
      ttl: json["ttl"] ?? '',
      jenisKelamin: json["jenis_kelamin"] ?? '',
      email: json["email"] ?? '',
      password: json["password"] ?? '',
      deletedAt: json["deleted_at"],
      createdAt: json["created_at"] ?? '',
      updatedAt: json["updated_at"] ?? '',
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late Future<Mahasiswa> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Post List'),
          centerTitle: true,
        ),
        body: Center(
          child: FutureBuilder<Mahasiswa>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  snapshot.data!.nama ?? 'No Data',
                  style: TextStyle(color: Colors.black),
                );
              } else if (snapshot.hasError) {
                print("Error: ${snapshot.error}");
                print("Response body: ${snapshot.data}");
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

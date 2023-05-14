import 'dart:convert';

import 'package:flutter_11_5_2023/model/mahasiswa.dart';
import 'package:http/http.dart' as http;

class MahasiswaService {
  final String _baseUrl = 'http://192.168.18.8:8000/api/mahasiswa';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));
      if (response.statusCode == 200) {
        Iterable it = jsonDecode(response.body);
        List<Mahasiswa> mahasiswa = it.map((e) => Mahasiswa.fromJson(e)).toList();
        return mahasiswa;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_11_5_2023/network/api.dart';
import 'dart:convert';
import 'login.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  String name='';

  @override
  void initState(){
    super.initState();
    _loadUserData();
  }

  _loadUserData() async{
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var user = jsonDecode(localStorage.getString('user') ?? '');

    if(user != null) {
      setState(() {
        name = user['name'];
      });
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text('Home', style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500
        ),),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        automaticallyImplyLeading: false,
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.power_settings_new),
        //     onPressed: (){
        //       logout();
        //     },
        //   )
        // ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Hello, ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text('${name}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: DataTable(
                headingRowColor: MaterialStateColor.resolveWith((states) => Colors.black),
             columns: [
                      DataColumn(
              label: Text('ID'),
                      ),
                      DataColumn(
              label: Text('Name'),
                      ),
                      DataColumn(
              label: Text('dsasad'),
                      ),
                      DataColumn(
              label: Text('dsasdd'),
                      ),
                      DataColumn(
              label: Text('action'),
                      ),
                    ], 
              rows: [
              
                     DataRow(color: MaterialStateColor.resolveWith((states) => Colors.black), cells: [
              DataCell(Text('1')),
              DataCell(Text('sadsad')),
              DataCell(Text('dasads')),
              DataCell(Text('asd')),
              DataCell(Text('asds')),
                     ]),
                     DataRow(color: MaterialStateColor.resolveWith((states) => Colors.black),cells: [
              DataCell(Text('2')),
              DataCell(Text('sadsad')),
              DataCell(Text('dasads')),
              DataCell(Text('asd')),
              DataCell(Text('asds')),
                     ]),
                     DataRow(color: MaterialStateColor.resolveWith((states) => Colors.black),cells: [
              DataCell(Text('3')),
              DataCell(Text('sadsad')),
              DataCell(Text('dasads')),
              DataCell(Text('asd')),
              DataCell(Text('asds')),
                     ]),
                     DataRow(color: MaterialStateColor.resolveWith((states) => Colors.black),cells: [
              DataCell(Text('4')),
              DataCell(Text('sadsad')),
              DataCell(Text('dasads')),
              DataCell(Text('asd')),
              DataCell(Text('asds')),
                     ])
                ]),
            )
            ],
          ),
        ),
        
      ),
    );
  }

  void logout() async{
    var res = await Network().getData('/logout');
    var body = json.decode(res.body);
    if(body['success']){
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.remove('user');
      localStorage.remove('token');
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context)=>Login()));
    }
  }
}

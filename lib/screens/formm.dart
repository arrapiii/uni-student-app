import 'package:flutter/material.dart';

enum ProductTypeEnum { Downloadble, Deliverable }

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late String _idNumber;
  DateTime? _dateOfBirth;
  late String _gender;
  late String _email;
  ProductTypeEnum? _productTypeEnum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Input Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nama',
                   focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.blue)
                  ),
                   enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    )
                   ),
                   errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    )
                   ),
                   focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(15.0)
                   ) 
                   ),
                  validator: (value) {
                    if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                      return 'Isi dengan huruf!';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nomor Induk',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.blue)
                  ),
                   enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    )
                   ),
                   errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    )
                   ),
                    focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(15.0)
                   ) 
                  ),
                  validator: (value) {
                    if (value!.isEmpty || !RegExp(r'^[0-9]+$').hasMatch(value!)) {
                      return 'Isi dengan angka!';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _idNumber = value!;
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Tanggal Lahir',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.blue)
                  ),
                   enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    )
                   ),
                   errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    )
                   ),
                    focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(15.0)
                   ) 
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Tanggal Lahir tidak boleh kosong';
                    }
                    return null;
                  },
                  onTap: () async {
                    DateTime? date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (date != null) {
                      setState(() {
                        _dateOfBirth = date;
                      });
                    }
                  },
                  controller: TextEditingController(
                    text: _dateOfBirth != null
                        ? '${_dateOfBirth!.day}/${_dateOfBirth!.month}/${_dateOfBirth!.year}'
                        : '',
                  ),
                  readOnly: true,
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Jenis Kelamin',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.blue)
                  ),
                   enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    )
                   ),
                   errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red
                  )
                 ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(15.0)
                   ) 
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Jenis Kelamin tidak boleh kosong';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _gender = value!;
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.blue)
                  ),
                   enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    )
                   ),
                   errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red
                  )
                 ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(15.0)
                   ) 
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email tidak boleh kosong';
                    }
                    if (!value.contains('@')) {
                      return 'Email tidak valid';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      const snackBar = SnackBar(
                        content: Text("Berhasil di input"),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => super.widget,
                          ));
                      // Lakukan sesuatu dengan data yang telah diinput
                      // Misalnya, mengirim data ke server
                    }
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

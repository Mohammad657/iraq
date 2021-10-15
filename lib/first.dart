import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // DocumentReference<Map<String, dynamic>> user = FirebaseFirestore.instance.collection("users1").doc('ali').s;
  var _Contry = TextEditingController();
  var _Department = TextEditingController();
  var _Name = TextEditingController();
  var _Number = TextEditingController();
  var _Address = TextEditingController();
  var _Information = TextEditingController();
  var _Time = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // future: Firebase.initializeApp();
    return Scaffold(
      appBar: AppBar(
        title: const Text('menu'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text(
                'لوحة ادخال المعلومات',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _Contry,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    labelText: 'المحافظة',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.location_history_outlined)),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _Department,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    labelText: 'التخصص',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.apartment)),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _Name,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    labelText: 'الاسم',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.drive_file_rename_outline)),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _Number,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    labelText: 'رقم الحجز',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone)),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _Address,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    labelText: 'العنوان',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.location_on)),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _Information,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    labelText: 'معلومات اخرى',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.info_outline)),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _Time,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    labelText: 'وقت دوام',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.access_time)),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    Map<String, dynamic> data = {
                      'name': _Name.text,
                      'Number': _Number.text,
                      'Address': _Address.text,
                      'Information': _Information.text,
                      'Time': _Time.text,
                      'department': _Department.text,
                      'country': _Contry.text
                    };
                    FirebaseFirestore.instance
                        .collection('IRAQI')
                        .doc(_Number.text)
                        .set(data);
                  },
                  child: const Text('ادخال المعلومات'))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class UpdateUser extends StatefulWidget {
  const UpdateUser({super.key});

  @override
  State<UpdateUser> createState() => _UpdateUserState();
}

class _UpdateUserState extends State<UpdateUser> {
  final bloodGroups = [
    "A+",
    "A-",
    'B+',
    "B-",
    'O+',
    'O-',
    'AB+',
    'AB-',
  ];
  String? SelectedBloodGroups;
  final CollectionReference donor =
      FirebaseFirestore.instance.collection('BloodGroup');

  TextEditingController donorName = TextEditingController();
  TextEditingController donorNumber = TextEditingController();

  void updateUser(docId) {
    final data = {
      'Name': donorName.text,
      'Number': donorNumber.text,
      'Group': SelectedBloodGroups
    };
    donor.doc(docId).update(data).then((value) => Navigator.pop(context));
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    donorName.text = args['name'];
    donorNumber.text = args['phone'].toString();
    SelectedBloodGroups = args['group'];
    final docId = args['id'];

    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        )),
        title: Text(
          "Update Donors",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: donorName,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.white)),
                  label:
                      Text("Donor Name", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: donorNumber,
                maxLength: 10,
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.white)),
                  label: Text("Phone Number",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 450,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: DropdownButtonFormField(
                    value: SelectedBloodGroups,
                    style: TextStyle(color: Colors.white),
                    dropdownColor: Colors.redAccent,
                    decoration: InputDecoration(
                      label: Text("Blood Groups",
                          style: TextStyle(color: Colors.white)),
                    ),
                    items: bloodGroups
                        .map(
                          (e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ),
                        )
                        .toList(),
                    onChanged: (val) {
                      SelectedBloodGroups = val;
                    },
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                updateUser(docId);
              },
              child: Text("update",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red[900]),
                minimumSize: MaterialStateProperty.all(
                  Size(double.infinity, 50),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

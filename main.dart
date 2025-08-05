import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const IDCard());
  }
}

class IDCard extends StatelessWidget {
  const IDCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 251, 251),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 87, 131),
        centerTitle: true,
        title: const Text(
          'Digital ID Card',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          color: const Color.fromARGB(255, 251, 251, 251),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              const CircleAvatar(
                radius: 40,
                backgroundColor: Color.fromARGB(255, 13, 76, 107),
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
              const SizedBox(height: 12),
              const Text(
                'Bijoya Talukder',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                'Batch: 61st, Department of CSE',
                style: TextStyle(color: Color.fromARGB(255, 2, 87, 130)),
              ),
              const SizedBox(height: 8),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.perm_identity),
                title: Text('ID: 0182310012101179'),
              ),
              const ListTile(
                leading: Icon(Icons.email),
                title: Text('Email: xyz@gmail.com'),
              ),
              const ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone: +8801300000000'),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

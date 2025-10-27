import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  const firebaseConfig = FirebaseOptions(
    apiKey: "AIzaSyCtmFOBA6zE10FUwF8KOuY3tNYKIZnWeL4",
    authDomain: "mad09-80358.firebaseapp.com",
    projectId: "mad09-80358",
    storageBucket: "mad09-80358.firebasestorage.app",
    messagingSenderId: "763936656523",
    appId: "1:763936656523:web:aa7a3f05f21c062432188e",
    measurementId: "G-65K38LWR5T",
  );

  await Firebase.initializeApp(
    options: firebaseConfig,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Firestore Test')),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              await FirebaseFirestore.instance.collection('test').add({
                'message': 'Hello from Flutter!',
                'timestamp': FieldValue.serverTimestamp(),
              });
              print('Document added!');
            },
            child: Text('Add Firestore Document'),
          ),
        ),
      ),
    );
  }
}


class FirestoreDemo extends StatelessWidget {
  final firestore = FirebaseFirestore.instance;

  FirestoreDemo({super.key});

  void _addMessage() {
    firestore.collection('messages').add({'text': 'Hello from Zapp.run!'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Firestore + Flutter Web')),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestore.collection('messages').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          final docs = snapshot.data!.docs;
          return ListView(
            children: docs.map((d) => ListTile(title: Text(d['text']))).toList(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addMessage,
        child: const Icon(Icons.add),
      ),
    );
  }
}

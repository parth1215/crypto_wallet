import 'package:crypto1/ui/authentication.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main()async{
   WidgetsFlutterBinding.ensureInitialized();
  await  Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyB7djw_lu9chQYKnGNPFcrZfuOmwSEjO4Q",
        appId: "crypto-ddb76",
        messagingSenderId: "71599998488",
        projectId: "crypto-ddb76"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false
     ,
     title: "Crypto Wallet",
     home: Authentication(),
   );




  }
}



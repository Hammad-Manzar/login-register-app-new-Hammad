import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:register_screen_flutter/firebase_options.dart';
import 'package:register_screen_flutter/loginscreen.dart';
import 'package:uuid/uuid.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void addUser() async{
    var userId = const Uuid().v1();

    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
      await FirebaseFirestore.instance.collection("UserData").doc(userId).set({
        "ID" : userId,
        "name" : name.text,
        "email" : email.text,
        "pass" : password.text
      });
    } catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Register Screen", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
          SizedBox(
            height: 20,
          ),
          Center(child: CircleAvatar(backgroundColor: Colors.purple,radius: 80,)),
          SizedBox(height: 40,),

          TextFormField(controller:name,decoration: InputDecoration(hintText: "Name"),),
          TextFormField(controller:email, decoration: InputDecoration(hintText: "Email"),),
          TextFormField(controller:password, decoration: InputDecoration(hintText: "Password"),),

          ElevatedButton(onPressed: () {
            addUser();
          }, child: Text("Register"))
        ],
      ),
    );
  }
}


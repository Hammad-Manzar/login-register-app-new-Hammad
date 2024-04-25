import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Login Screen", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
          SizedBox(
            height: 20,
          ),

          TextFormField(controller: TextEditingController(text: "Name"),),
          TextFormField(controller: TextEditingController(text: "Email"),),

          ElevatedButton(onPressed: () {}, child: Text("Login"))
        ],
      ),
    );
  }
}



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/network/network_register_screen.dart';

class NetworkScreen extends StatefulWidget {
  const NetworkScreen({super.key});

  @override
  State<NetworkScreen> createState() => _NetworkScreenState();
}

class _NetworkScreenState extends State<NetworkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Network"),),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) {
              return NetworkRegisterScreen();
            },));
          }, child: Text("회원가입")),
        ],
      ),
    );
  }
}

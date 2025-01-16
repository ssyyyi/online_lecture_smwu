

import 'package:flutter/material.dart';

class ListviewBuilderPracticeScreen extends StatelessWidget {
  const ListviewBuilderPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> dataList = [];
    for(int i=0; i<30; i++){
      dataList.add(i);
    }
    return Scaffold(
      appBar: AppBar(title: Text("ListView 실습"),),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return Container(
              width: 50,
              height: 70,
              alignment: Alignment.center,
              child: Text("$index", style: TextStyle(fontSize: 20),));
      },),
    );
  }
}

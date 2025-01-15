import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/column_practice_screen.dart';
import 'package:online_lecture_smwu/screen/column_row_practice_screen.dart';
import 'package:online_lecture_smwu/screen/column_screen.dart';
import 'package:online_lecture_smwu/screen/container_practice_screen.dart';
import 'package:online_lecture_smwu/screen/container_screen.dart';
import 'package:online_lecture_smwu/screen/image/image_screen.dart';
import 'package:online_lecture_smwu/screen/row/row_practice_screen.dart';
import 'package:online_lecture_smwu/screen/row/row_screen.dart';
import 'package:online_lecture_smwu/screen/text/text_screen.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold : 화면의 기초가 되는 위젯
    // Column 세로로 위젯을 나열하는 위젯
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: () {
                  //화면이동 Navigator
                  // ctrl + space
                  // 코드 정리 단축키: Ctrl + Alt + L
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ContainerScreen();
                    },
                  ));
                },
                child: const Text("Container")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ContainerPracticeScreen();
                    },
                  ));
                },
                child: const Text("Container 실습")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ColumnScreen();
                    },
                  ));
                },
                child: const Text("Column")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ColumnPracticeScreen();
                    },
                  ));
                },
                child: const Text("Column 실습")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const RowScreen();
                    },
                  ));
                },
                child: const Text("Row")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const RowPracticeScreen();
                    },
                  ));
                },
                child: const Text("Row 실습")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ColumnRowPracticeScreen();
                    },
                  ));
                },
                child: const Text("Column, Row 심화")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const TextScreen();
                    },
                  ));
                },
                child: const Text("Text")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ImageScreen();
                    },
                  ));
                },
                child: const Text("Image")),
          ],
        ),
      ),
    );
  }
}

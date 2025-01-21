import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MemberDetailScreen extends StatefulWidget {
  const MemberDetailScreen({required this.email, required this.dio, super.key});

  final String email;
  final Dio dio;

  @override
  State<MemberDetailScreen> createState() => _MemberDetailScreenState();
}

class _MemberDetailScreenState extends State<MemberDetailScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController pwController = TextEditingController();
  TextEditingController infoController = TextEditingController();

  @override
  void initState() {
    emailController.text = widget.email;
    widget.dio.post("/api/v1/member/find-one", data: {
      "email": widget.email,
      "password": "bbbb",
    }).then(
      (value) {
        pwController.text = value.data["password"];
        infoController.text = value.data["description"];
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    pwController.dispose();
    infoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MemberDetail"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              readOnly: true,
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "이메일을 입력하세요",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            TextFormField(
              controller: pwController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "비밀번호를 입력하세요",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            TextFormField(
              controller: infoController,
              decoration: InputDecoration(
                hintText: "계정 정보를 입력하세요",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                Response response =
                    await widget.dio.patch("/api/v1/member/update", data: {
                  "email": widget.email,
                  "password": pwController.text,
                  "description": infoController.text,
                });
                if (response.statusCode == 200) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("성공"),
                  ));

                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pop(context, true);
                }
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(double.infinity, 50)),
              child: Text("업데이트"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(double.infinity, 50)),
              child: Text("삭제"),
            ),
          ],
        ),
      ),
    );
  }
}

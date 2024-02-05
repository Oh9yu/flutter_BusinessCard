import 'dart:ffi';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController introduceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(
            Icons.person,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // image section
            Container(
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: 160,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/profile.jpeg',
                    fit: BoxFit.cover,
                  ),
                )),
            // text section
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    child: Text(
                      '이름',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text('권오규'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    child: Text(
                      '나이',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text('27'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    child: Text(
                      '취미',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text('게임'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    child: Text(
                      '직업',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text('프론트엔드'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    child: Text(
                      '전공',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text('조리학'),
                ],
              ),
            ),
            // input section
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                '자기소개',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: TextField(
                maxLines: 6,
                controller: introduceController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.blueGrey, width: 2.0),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

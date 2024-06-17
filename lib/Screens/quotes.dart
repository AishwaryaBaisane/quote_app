import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quote_app/Screens/thought.dart';
import 'package:quote_app/utils/global.dart';
import 'package:quote_app/utils/quotesFile.dart';

// QuotesModel3? quotesModel3;
QuotesModel? quotesModel;

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          itemCount: ImageList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 9 / 8),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                selectImg = false;
                ind = index;
                Navigator.of(context).pop();
              });
            },
            child: Container(
              margin: EdgeInsets.all(15),
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                image: DecorationImage(
                  image: AssetImage('${ImageList[index]['img']}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void fun() {
    setState(() {
      selectImg;
    });
  }
}

int ind = 0;
int ind2 = 0;
int ind3 = 0;

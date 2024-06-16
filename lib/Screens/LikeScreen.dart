import 'package:flutter/material.dart';
import 'package:quote_app/utils/global.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({super.key});

  @override
  State<LikeScreen> createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ...List.generate(
              LikeList.length,
              (index) => Text('${LikeList[index]}'),
            )
          ],
        ),
      ),
    );
  }
}

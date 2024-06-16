import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quote_app/Screens/thought.dart';
import 'package:quote_app/Screens/thought2.dart';
import 'package:quote_app/Screens/thought3..dart';
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
                // Si = ImageList[index]['img'];
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

// SingleChildScrollView(
//           child: Column(
//             children: [
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: List.generate(
//                     ImageList.length,
//                     (index) => GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           selectImg = false;
//                           ind = index;
//                           Navigator.of(context).pop();
//                         });
//                         print('byy');
//                       },
//                       child: Container(
//                         margin: EdgeInsets.all(15),
//                         height: 300,
//                         width: 200,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(15),
//                           ),
//                           image: DecorationImage(
//                             image: AssetImage('${ImageList[index]['img']}'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: List.generate(
//                     ImageList2.length,
//                     (index) => GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           selectImg2 = false;
//                           ind2 = index;
//                           Navigator.of(context).pop();
//                         });
//                         print('byy');
//                       },
//                       child: Container(
//                         margin: EdgeInsets.all(15),
//                         height: 300,
//                         width: 200,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(15),
//                           ),
//                           image: DecorationImage(
//                             image: AssetImage('${ImageList2[index]['img']}'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: List.generate(
//                     ImageList3.length,
//                     (index) => GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           selectImg3 = false;
//                           ind3 = index;
//                           Navigator.of(context).pop();
//                         });
//                         print('byy');
//                       },
//                       child: Container(
//                         margin: EdgeInsets.all(15),
//                         height: 300,
//                         width: 200,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(15),
//                           ),
//                           image: DecorationImage(
//                             image: AssetImage('${ImageList3[index]['img']}'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )

// ListView.builder(
//         itemBuilder: (context, index) => Card(
//           color: colorList[index % colorList.length],
//           child: ListTile(
//             title: Text(quotesModel!.QuotesList[index].quote!),
//             subtitle: Text('-${quotesModel!.QuotesList[index].author!}',style: TextStyle(fontWeight: FontWeight.bold),),
//           ),
//         ),
//       ),
//List.generate(
//           itemCount: QuotesList56.length,
//           itemBuilder: (BuildContext context, int index) {
//             Container(
//               height: 500,
//               width: 500,
//               color: Colors.black,
//             );
//           },
//         ),
// List selectImg3 = [];
int ind = 0;
int ind2 = 0;
int ind3 = 0;

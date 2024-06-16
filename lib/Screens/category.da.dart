import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quote_app/utils/CategoryList..dart';
import 'package:quote_app/utils/global.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Categorys',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: height * 0.2,
                  width: width * 0.9 + 10,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/img/Category/flo.jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Thought Time',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  ...List.generate(
                    4,
                    (index) => SingleChildScrollView(
                      child: GestureDetector(onTap: () {
                        setState(() {
                          select = index;
                          String Q1 = Save[select][index]['quote'];
                          String Q2 = Save[select][index]['img'];
                          // SaverList = Save[index];
                          // (index ==0)?
                          print(Q1);
                          print(Q2);
                        });
                        // print(SaverList);
                        Navigator.of(context).pushNamed('/th');
                      },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: height * 0.2 - 20,
                          width: width * 0.5 + 30,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  Category[index]['C_img'],
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '${Category[index]['IMO']}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Inspirstion',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  ...List.generate(
                    4,
                    (index) => SingleChildScrollView(
                      child: GestureDetector(onTap: () {
                        setState(() {
                          select = index;
                          String Q3 = Save2[select][index]['quote'];
                          String Q4 = Save2[select][index]['img'];
                          // SaverList = Save[index];
                          // (index ==0)?
                          print(Q3);
                          print(Q4);
                        });
                        Navigator.of(context).pushNamed('/th2');
                      },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: height * 0.2 - 20,
                          width: width * 0.5 + 30,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  Category1[index]['C_img'],
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '${Category1[index]['IMO']}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Love & Family',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  ...List.generate(
                    4,
                    (index) => SingleChildScrollView(
                      child: GestureDetector(onTap: () {
                        setState(() {
                          select = index;
                          String Q5 = Save3[select][index]['quote'];
                          String Q6 = Save3[select][index]['img'];
                          // SaverList = Save[index];
                          // (index ==0)?
                          print(Q5);
                          print(Q6);
                        });
                        Navigator.of(context).pushNamed('/th3');
                      },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: height * 0.2 - 20,
                          width: width * 0.5 + 30,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  Category2[index]['C_img'],
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '${Category2[index]['IMO']}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// List({String img}) SaverList = [
//   {
//     img : img,
//   }
//
// ];

List<String> SaverList = [];

//GridView.builder(
//         itemCount: successQuotes.length,
//         itemBuilder: (context, index) => Container(
//           margin: EdgeInsets.all(5),
//           padding: EdgeInsets.all(5),
//           height: height * 0.9,
//           width: width * 0.5,
//           decoration: BoxDecoration(
//             color: Colors.red,
//             borderRadius: BorderRadius.all(
//               Radius.circular(15),
//             ),
//           ),
//           child: Center(
//             child: Text('${Category[index]}'),
//           ),
//         ),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3, childAspectRatio: 9 / 8),
//       ),
int select = 0;
//
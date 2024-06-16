import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quote_app/utils/global.dart';
import 'package:quote_app/utils/quotesFile.dart';

QuotesModel? quotesModel;
// QuotesModel2? quotesModel2;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    quotesModel = QuotesModel.toList(QutoesList);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Quotes of the Day',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        leading: ActionChip(
          label: Text(''),
          backgroundColor: Colors.white,
          shape: CircleBorder(
            side: BorderSide(color: Colors.white),
          ),
          avatar: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Icon(
              ch ? (Icons.dark_mode) : (Icons.sunny),
              color: Colors.black26,
              size: 25,
            ),
          ),
          onPressed: () {
            setState(() {
              ch = !ch;
            });
          },
        ),
        // backgroundColor: Colors.red,
        // bottom: BottomAppBar(color: Colors.blue,),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                '   Good Afternoon!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: height * 0.7,
            width: width * 0.9 - 20,
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Stack(
                children: [
                  Container(
                    height: height * 0.7,
                    width: width * 0.9 - 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('${quotesModel!.QuotesList[x].img}'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Center(
                      child: ListTile(
                        title: Text(
                          '${quotesModel!.QuotesList[x].quote}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Text(
                            '-${quotesModel!.QuotesList[x].author}',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 510),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              Random random = Random();
                              x = random
                                  .nextInt(quotesModel!.QuotesList.length);
                            });
                          },
                          icon: Icon(
                            Icons.restart_alt_outlined,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              ch = !ch;
                            });
                          },
                          child: Icon(
                            ch ? Icons.favorite : Icons.favorite_border,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(14),
        height: height * 0.1 - 20,
        width: width * 0.1 - 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black54, blurRadius: 2),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // SizedBox(width: 30,),
            Container(
              height: height * 0.2,
              width: width * 0.2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('cat');
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.black54,
                  size: 40,
                ),
              ),
            ),

            Container(
              height: height * 0.2,
              width: width * 0.2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/cat');
                },
                icon: Icon(
                  Icons.grid_view,
                  color: Colors.black54,
                  size: 35,
                ),
              ),
            ),
            Container(
              height: height * 0.2,
              width: width * 0.2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('cat');
                },
                icon: Icon(
                  Icons.edit_note,
                  color: Colors.black54,
                  size: 50,
                ),
              ),
            ),
            Container(
              height: height * 0.2,
              width: width * 0.2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/like');
                },
                icon: Icon(
                  Icons.favorite,
                  color: Colors.black54,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bool ch = false;
int x = 0;
int y = 0;

import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quote_app/Screens/HomePage.dart';
import 'package:quote_app/Screens/category.da.dart';
import 'package:quote_app/Screens/quotes.dart';
import 'package:quote_app/utils/CategoryList..dart';
import 'package:quote_app/utils/global.dart';
import 'dart:ui' as ui;
import 'package:share_extend/share_extend.dart';

class ThoughtScreen extends StatefulWidget {
  const ThoughtScreen({super.key});

  @override
  State<ThoughtScreen> createState() => _ThoughtScreenState();
}

List<GlobalKey> imgkey =
    List.generate(happyness.length, (index) => GlobalKey());

// GlobalKey imgKey = GlobalKey();

class _ThoughtScreenState extends State<ThoughtScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                happyness.length,
                (index) => Stack(
                  children: [
                    RepaintBoundary(
                      key: imgkey[index],
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            fun();
                          });
                        },
                        child: Container(
                          height: height * 0.9 + 100,
                          width: width * 0.9 + 100,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                (selectImg)
                                    ? Save[select][index]['img']
                                    : ImageList[ind]['img'],
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Save[select][index]['quote'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black38,
                                      blurRadius: 15,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height * 0.1,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '-${Save[select][index]['author']}  ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black38,
                                        blurRadius: 15,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 330, top: 20),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectImg = true;
                                ind = 0;
                                fun();
                              });
                              print('hii');
                              Navigator.of(context).pushNamed('/qt');
                            },
                            child: Icon(
                              Icons.pages_outlined,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.9 - 90,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  ch = !ch;
                                  if (!ch) {
                                    LikeList.removeAt([select][index]);
                                    LikeList.removeAt([select][index]);
                                  } else {
                                    LikeList.add(Save[select][index]['quote']);
                                    LikeList.add(Save[select][index]['author']);
                                  }
                                });
                                print(LikeList);
                              },
                              child: Icon(
                                ch ? Icons.favorite : Icons.favorite_border,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                RenderRepaintBoundary boundary = imgkey[index]
                                        .currentContext!
                                        .findRenderObject()
                                    as RenderRepaintBoundary;

                                ui.Image image = await boundary.toImage();
                                ByteData? bytedata = await image.toByteData(
                                    format: ui.ImageByteFormat.png);
                                Uint8List img = bytedata!.buffer.asUint8List();

                                final path =
                                    await getApplicationDocumentsDirectory();
                                File file = File("${path.path}/img.png");
                                file.writeAsBytes(img);
                                ShareExtend.share(file.path, "image");
                              },
                              child: Icon(
                                Icons.share,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.teal.shade50,
                                      title: Text(
                                        'Save this image ?',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text('Back'),
                                        ),
                                        TextButton(
                                          onPressed: () async {
                                            RenderRepaintBoundary boundary =
                                                imgkey[index]
                                                        .currentContext!
                                                        .findRenderObject()
                                                    as RenderRepaintBoundary;

                                            ui.Image image =
                                                await boundary.toImage();
                                            ByteData? bytedata =
                                                await image.toByteData(
                                                    format:
                                                        ui.ImageByteFormat.png);
                                            Uint8List img =
                                                bytedata!.buffer.asUint8List();
                                            ImageGallerySaver.saveImage(img);
                                            Navigator.pop(context);
                                          },
                                          child: Text('Save'),
                                        )
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Icon(
                                Icons.file_download_outlined,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            IconButton(
                              onPressed: () async {
                                RenderRepaintBoundary boundary = imgkey[index]
                                        .currentContext!
                                        .findRenderObject()
                                    as RenderRepaintBoundary;

                                ui.Image image = await boundary.toImage();
                                ByteData? bytedata = await image.toByteData(
                                    format: ui.ImageByteFormat.png);
                                Uint8List img = bytedata!.buffer.asUint8List();

                                final path =
                                    await getApplicationDocumentsDirectory();
                                File file = File("${path.path}/img.png");
                                file.writeAsBytes(img);
                                ShareExtend.share(file.path, "image");
                                int location = WallpaperManager
                                    .BOTH_SCREEN; //can be Home/Lock Screen
                                bool result =
                                    await WallpaperManager.setWallpaperFromFile(
                                        file.path, location);
                                Navigator.pop(context);
                                //
                              },
                              icon: Icon(
                                Icons.wallpaper,
                                color: Colors.white,
                                size: 45,
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void fun() {
    setState(() {
      selectImg = false;
    });
  }
}

Icon first = Icon(Icons.favorite_border);
Icon second = Icon(Icons.favorite);
bool selectImg = true;
String Si = '${Save[select][inde]['img']}';
int inde = 0;

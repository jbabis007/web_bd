import 'dart:ui' as ui;
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class form1 extends StatefulWidget {
  const form1({Key? key}) : super(key: key);

  @override
  _form1State createState() => _form1State();
}

class _form1State extends State<form1> {



  
  @override
  Widget build(BuildContext context) {

    Image image = new Image.network('https://i.stack.imgur.com/lkd0a.png');
    Completer<ImageInfo> completer = Completer();
    image.image
        .resolve(new ImageConfiguration())
        .addListener(ImageStreamListener((ImageInfo info, bool _) {
      completer.complete(info);
    }));


    return Scaffold(backgroundColor: Colors.red,
      body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [Container(
          //width: MediaQuery.of(context).size.width/2,
          //width: 142*2,
          height: MediaQuery.of(context).size.height*10,//5267/0.15,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('img/img01.png'),
            ),
          ),
        ),
        ],
      ),
    ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class form02 extends StatefulWidget {
  const form02({Key? key}) : super(key: key);

  @override
  _form02State createState() => _form02State();
}

class _form02State extends State<form02> {



  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //Image.network( 'https://picsum.photos/250?image=9',fit: BoxFit.fitWidth, ),
        Image.asset('img/img05.jpg',fit: BoxFit.fitWidth,)
      ],
    );
  }
}

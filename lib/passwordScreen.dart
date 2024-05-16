import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color.dart';

class passwordScreen extends StatelessWidget {
  const passwordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

        backgroundColor:MyColors.red,
        body: WillPopScope(
        onWillPop: () async {
      // NavigatorMethod(context: context, screen: const IndexScreen2());
      return false;
    },
    child: SingleChildScrollView(
    child: SafeArea(
    child: Column(
    children: [
    SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height *0.3,
      child: Column(
        children: [
          CircleAvatar(
              backgroundColor: MyColors.white1,
              radius: 80,
              child: Image(image: AssetImage("assets/img.png") , fit: BoxFit.cover,)),


        Container(

          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.08,

          child: AutoSizeText(
            "password",
            style: TextStyle(
              fontSize: 100
            ),
          ),
        )



        ])
      ),
    Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height *0.7,
    decoration: const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topRight: Radius.circular(20),
    topLeft: Radius.circular(20),
    )
    ),

    child: Column(children: [ Row( children: [ IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back),) ,Text("Setting",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
    )
    ]
    )]
    )
    )]
    )
        )
    )
    )
    )
    );
  }}
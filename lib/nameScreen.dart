import 'dart:ui';

import 'package:flutter/material.dart';

class nameScreen extends StatelessWidget {
  const nameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

            backgroundColor:Colors.red,
            body: WillPopScope(
                onWillPop: () async {
                  // NavigatorMethod(context: context, screen: const IndexScreen2());
                  return false;
                },
                child: SingleChildScrollView(
                    child: SafeArea(
                        child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height *0.15,
                                decoration:const BoxDecoration(image: DecorationImage(image: AssetImage('assets/BDA.gif'),fit: BoxFit.cover,),),
                                child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                                  child: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height,
                                      child: Center(child: Text(""),)),),

                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height *0.85,
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

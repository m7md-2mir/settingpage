import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back),),title: Text("about"),),
        body:Container()
    );
  }
}

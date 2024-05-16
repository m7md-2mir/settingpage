import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ptn extends StatelessWidget {
  const ptn({super.key, required this.tap, required this.name});
  final GestureTapCallback tap;
  final String name;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: tap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name,style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,

              ),),
              Icon(Icons.arrow_forward_ios_outlined,)
            ],
          ),
        ),
      ),
    );
  }
}


class ptn2 extends StatelessWidget {
  const ptn2({super.key, required this.tap2, required this.icon, required this.name2});
  final GestureTapCallback tap2;
  final IconData icon;
  final String name2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(onTap: tap2,
          child: Container( child: Row(children: [ Icon(icon),Text(name2,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
          ),]),)),);
  }
}

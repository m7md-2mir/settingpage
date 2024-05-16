import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:settingpage/deleteAccountScreen.dart';
import 'package:settingpage/emailScreen.dart';
import 'package:settingpage/nameScreen.dart';
import 'package:settingpage/passwordScreen.dart';
import 'package:settingpage/phoneNumberScreen.dart';
import 'package:settingpage/ptn.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
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
                    child: Column(children: [ Row( children: [ IconButton(onPressed: (){},icon: Icon(Icons.arrow_back),) ,Text("Setting",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)]),
      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.person,color: Colors.red,),
                            SizedBox(width: 10,),
                            Text("Account",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Divider(height: 20,thickness: 1,),
                      ptn(tap: () { Navigator.push(context,MaterialPageRoute(builder: (context) => const passwordScreen())); }, name: 'Change Password',),
                      ptn(tap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const emailScreen())); }, name: 'Change Email',),
                      ptn(tap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const phoneNumberScreen())); }, name: 'Change Phone Number',),
                      ptn(tap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const nameScreen())); }, name: 'Change Name',),
                      ptn(tap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const deleteAccountScreen())); }, name: 'Delete Account',),

                      Divider(height: 20,thickness: 1,),
                      ptn2(tap2: () {  }, icon: Icons.privacy_tip, name2: 'Privacy and policy',),
                      ptn2(tap2: () {  }, icon: Icons.text_snippet, name2: 'Terms & Conditions',),
                      ptn2(tap2: () {  }, icon: Icons.question_mark, name2: 'About Us',),

                      Divider(height: 20,thickness: 1,),

                      ElevatedButton(onPressed: (){}, child:Text("Log Uot",style: TextStyle(color: Colors.white,fontSize: 18),),style:ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[400],
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold)), )

 ])



                  ),
                ],
              ),
            ),
          ),
        ) ,
      ),
    );
  }
}

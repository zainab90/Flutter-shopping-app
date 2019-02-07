import 'package:flutter/material.dart';
import 'package:e_shopping/UI/login-page.dart';
import 'package:e_shopping/UI/home-page.dart';

void main() {
 runApp( new MaterialApp(
   home: LoginPage(),
   title: 'E-Shooping App',
   routes:{
     '/home':(BuildContext context)=>HomePage(),
     '/login':(BuildContext context)=> LoginPage(),
   },
 ));


}

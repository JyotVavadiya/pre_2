import 'package:flutter/material.dart';
import 'package:pre_2/views/detail.dart';
import 'package:pre_2/views/home.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>Home(),
        "detail":(context)=>Detail(),
      },
    ),
  );
}
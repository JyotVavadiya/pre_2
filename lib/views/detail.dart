import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pre_2/helpers/quote_helper.dart';
import 'package:pre_2/models/quote_model.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  late Future<List<Quotes_Model>> getAllData;

  List number = [
    0, 1, 2, 3, 4
  ];

  int firstNumber = 0;
  var r1 = Random();



  @override
  void initState() {
    QuoteHelper.quoteHelper.deleteAllData();
    QuoteHelper.quoteHelper.insert1();
    QuoteHelper.quoteHelper.insert2();
    QuoteHelper.quoteHelper.insert3();
    QuoteHelper.quoteHelper.insert4();
    QuoteHelper.quoteHelper.insert5();
    getAllData = QuoteHelper.quoteHelper.getData();

    Timer(Duration(seconds: 10), () {
      int i1 = r1.nextInt(5);
      setState(() {
        firstNumber = number[i1];
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/img/1.jpg"),
          fit: BoxFit.fill,
        )),
        child: FutureBuilder(
          future: getAllData,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("${snapshot.error}"),
              );
            } else if (snapshot.hasData) {


              List<Quotes_Model> data = snapshot.data;

              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text("${data[firstNumber].quote}", style: GoogleFonts.damion(fontSize: 30),),
                    SizedBox(height: 20,),
                    // IconButton(
                    //   onPressed: () {
                    //     int i1 = r1.nextInt(5);
                    //     setState(() {
                    //       firstNumber = number[i1];
                    //     });
                    //   },
                    //   icon: Icon(
                    //     Icons.arrow_forward_ios,
                    //     color: Colors.black,
                    //     size: 40,
                    //   ),
                    // ),
                  ],
                ),
              );

            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

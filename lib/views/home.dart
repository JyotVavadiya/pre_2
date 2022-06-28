import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("QUOTES", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Text("Most Popular", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
          ),
          //4 box
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 120,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: Text("Love Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                ),
                InkWell(
                  onTap:(){
                    Navigator.of(context).pushNamed('detail');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 120,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: Text("Life Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 120,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  child: Text("Motivational\n     Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 120,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink,
                  ),
                  child: Text("Education Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Divider(
            thickness: 6,
            color: Colors.grey.shade200,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Text("Authors", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
          ),
          //4 box
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap:(){},
                  child: Container(
                    alignment: Alignment.center,
                    height: 120,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.indigo,
                    ),
                    child: Text("Animals Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                  ),
                ),
                InkWell(
                  onTap:(){},
                  child: Container(
                    alignment: Alignment.center,
                    height: 120,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: Text("Birds Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap:(){},
                  child: Container(
                    alignment: Alignment.center,
                    height: 120,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.redAccent.shade100,
                    ),
                    child: Text("Art Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                  ),
                ),
                InkWell(
                  onTap:(){},
                  child: Container(
                    alignment: Alignment.center,
                    height: 120,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.cyan,
                    ),
                    child: Text("Family Quotes", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled/screens/home/side_menu.dart';
import 'package:untitled/services/auth.dart';


class home extends StatelessWidget {
   home({Key? key}) : super(key: key);
  
// final AuthSerivice _auth = AuthSerivice();
  @override
  Widget build(BuildContext context) {
    // bool showSideMenu=false;

    return Scaffold(
      drawer: sideMenu(),
      appBar: AppBar(

        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_shopping_cart,
                color: Color(0xFF000000),
              ))
        ],

        backgroundColor: Color(0xFFF8DA19),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffEAE8E8),
              ),
              margin: EdgeInsets.all(10),
              height: 48,
              width: 420,
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xffEAE8E8)),
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xff707070),
                    ),
                    border: InputBorder.none),
              ),
            ),
          

            SizedBox(
              height: 15,
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              height: 122,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: new DecorationImage(
                                image: AssetImage('assets/indian.jpg'),
                                // Text('indian'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(child: Text("Indian")),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: new DecorationImage(
                                image: AssetImage('assets/american.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(height: 5),
                      Center(child: Text("American")),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: new DecorationImage(
                                image: AssetImage('assets/chinese.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(height: 5),
                      Center(child: Text("Chinese")),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: new DecorationImage(
                                image: AssetImage('assets/italian.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(height: 5),
                      Center(child: Text("Italian")),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: new DecorationImage(
                                image: AssetImage('assets/japanese.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Text("Japanese"),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
   
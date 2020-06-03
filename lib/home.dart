import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  @override 
  HomeState createState() => HomeState();

}

class HomeState extends State<Home> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(
          " BUILD IT! ",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w900,
            fontSize: 20.00,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue[800],
            Colors.blue[200],
          ],

        )),
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 17.0),
                child: Container(
                  height: 250.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 9.0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          ' Event ',
                          style: TextStyle(
                            fontSize: 30.00,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: 30.0),
                        Text(
                          ' Name: BUILD IT! 2020 ',
                          style: TextStyle(
                            fontSize: 14.00,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          ' Date: 05 NOVEMBER 2020 ',
                          style: TextStyle(
                            fontSize: 14.00,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          ' Time: 0830 - 1700 ',
                          style: TextStyle(
                            fontSize: 14.00,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          ' Venue: LIBRARY, UiTM CAW. MELAKA KAMPUS JASIN ',
                          style: TextStyle(
                            fontSize: 14.00,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,
        onTap: (int value) {
          setState(() {
            currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(' Home '),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_album),
            title: Text(' Gallery '),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.link),
            title: Text(' Register '),
          ),
        ],
      ),
    );
}

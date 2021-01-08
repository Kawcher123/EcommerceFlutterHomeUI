import 'package:flutter/material.dart';

class Hoomescreen extends StatefulWidget {
  @override
  _HoomescreenState createState() => _HoomescreenState();
}

class _HoomescreenState extends State<Hoomescreen> {
  final List<String> _listitem = [
    "assets/images/one.jpg",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/5.jpeg",
    "assets/images/6.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text("Home")),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 30,
              width: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[800]),
              child: Center(
                child: Text(
                  "0",
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/images/one.jpg"),
                        fit: BoxFit.fill),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.3),
                        Colors.black.withOpacity(.2),
                      ]),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "HIGH RANGE | BLUETOTH",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Center(
                            child: Text(
                              "SHOW NOW",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "FEATURED PRODUCTS",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      padding: EdgeInsets.all(10),
                      children: _listitem
                          .map((item) => Card(
                                color: Colors.transparent,
                                elevation: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(item),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ))
                          .toList()),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "CATEGORIES",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 230,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _listitem
                    .map((item) => Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(item),
                                    fit: BoxFit.cover)),
                          ),
                        ))
                    .toList(),
              ),
            ),
          )
        ],
      )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Ecommerce App'),
              decoration: BoxDecoration(
                color: Colors.grey[600],
              ),
            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.people),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}

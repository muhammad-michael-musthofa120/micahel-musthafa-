import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        SizedBox(
          height: 39.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu, color: Colors.grey),
              onPressed: () {},
            ),
            Container(
              height: 50.0,
              width: 200.0,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25.0),
                      bottomLeft: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0))),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 15.0),
                    prefixIcon: Icon(Icons.search, color: Colors.grey)),
              ),
            ),
            IconButton(
              icon: Icon(Icons.download_done, color: Colors.grey),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text('Genre Kita',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey.withOpacity(0.6),
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Jazz',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Pop',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Rock',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Santuy',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text('Jazz',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
        ),
        SizedBox(height: 10.0),
        Container(
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _musik1('assets/jaz1.png', 'So What'),
              _musik1('assets/jaz3.png', 'My Favorite Things'),
              _musik1('assets/jaz2.png', 'Take Five')
            ],
          ),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: EdgeInsets.only(left: 230.0),
          child: Text('Rekomendasi Pop Songs',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
        ),
        SizedBox(height: 10.0),
        Container(
            height: 600.0,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                _musik2('assets/jaz2.png', 'In The End'),
                _musik2('assets/jaz1.png', 'Blink 182'),
                _musik2('assets/jaz2.png', 'Green Day – Boulevard of Broken Dreams')
              ],
            )),
      ],
    ));
  }

  Widget _musik2(String imgPath, String judul) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 500.0,
            width: 500.0,
          ),
          Positioned(
              top: 14.0,
            
              child: Container(
                  height: 315.0,
                  width: 330.0,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 194, 178, 165),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(children: [
                    SizedBox(height: 40.0),
                    Image.asset(
                      imgPath,
                      fit: BoxFit.fill,
                      width: 200.0,
                      height: 200.0,
                    ),
                    Text(judul,
                    
                        style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ]))),
        ],
      ),
    );
  }

  Widget _musik1(String imgPath, String judul) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 145.0,
            width: 145.0,
          ),
          Positioned(
              top: 7.0,
              bottom: 12.0,

              
              child: Container(
                  height: 115.0,
                  width: 135.0,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 165, 179, 194),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(children: [
                    SizedBox(height: 12.0),
                    Image.asset(
                      
                      imgPath,
                      fit: BoxFit.cover,
                      height: 60.0,
                      width: 60.0,
                    ),
                    Text(judul,
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ]))),
        ],
      ),
    );
  }
}

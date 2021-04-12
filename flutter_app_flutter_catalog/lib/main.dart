import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  MotionTabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = MotionTabController(initialIndex: 1, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            
          ],
        )
      ),
      appBar: AppBar(
        title: Text("Flutter Catalog"),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.search_outlined), onPressed: () {
            print("On Search Tapped!");
          })
        ],
      ),
      bottomNavigationBar: MotionTabBar(
        labels: [
          "Basic", "Advanced", "Bookmarks"
        ],
        initialSelectedTab: "Basic",
        tabIconColor: Colors.blue,
        tabSelectedColor: Colors.blue,
        onTabItemSelected: (int value) {
          print(value);
          setState(() {
            _tabController.index = value;
          });
        },
        icons: [
          Icons.my_library_books_outlined, Icons.insert_chart, Icons.star
        ],
        textStyle: TextStyle(color: Colors.blue),
      ),
      body: MotionTabBarView(
      controller: _tabController,
      children: <Widget>[
        Container(
          child: Center(
            child: Text("Basic"),
          ),
        ),
        Container(
          child: Center(
            child: Text("Advanced"),
          ),
        ),
        Container(
          child: Center(
            child: Text("Bookmarks"),
          ),
        ),
      ],
    ));
  }
}

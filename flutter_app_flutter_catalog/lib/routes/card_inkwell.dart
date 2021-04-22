import 'package:flutter/material.dart';

class CardInkWellExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(5.0),
        children: [
          Card(
            color: Colors.blue,
            elevation: 20.0,
            child: SizedBox(
              height: 100.0,
              child: Center(
                  child: Text(
                "Card Example",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              )),
            ),
          ),
          Card(
            color: Colors.green,
            elevation: 0.0,
            child: SizedBox(
              height: 100.0,
              child: InkWell(
                onTap: () {
                  print("Card on tap!");
                },
                splashColor: Colors.yellow,
                child: Center(
                    child: Text(
                  "Card with Inkwell effect on tap",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                )),
              ),
            ),
          ),
          Card(
            color: Colors.cyanAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: SizedBox(
              height: 100.0,
              child: Center(
                child: Text(
                  "Card border",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 10.0,
            child: Column(
              children: [
                SizedBox(
                  height: 180.0,
                  child: Stack(
                    children: [
                      Positioned.fill(
                          child: Image.asset(
                        "assets/images/image01.jpg",
                        fit: BoxFit.fill,
                      )),
                      Positioned(
                        bottom: 16.0,
                        left: 16.0,
                        right: 16.0,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Card 4 ",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.blue),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ButtonBar(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "View",
                          style: TextStyle(fontSize: 15.0),
                        )),
                    TextButton(
                      onPressed: () {},
                      child: Text("Share", style: TextStyle(fontSize: 15.0)),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

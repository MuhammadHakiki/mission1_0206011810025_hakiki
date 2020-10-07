import 'package:flutter/material.dart';
import 'package:flutter_widget/buy.dart';

class NextGo extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<NextGo> with SingleTickerProviderStateMixin {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mission 1"),
          backgroundColor: Colors.lightBlue,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/light2.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Flexible(
                  flex: 8,
                  child: Container(
                    width: 1000,
                    height: 650,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/flowers.JPG"),
                            fit: BoxFit.fill)),
                  ),
                ),
                Flexible(
                    flex: 4,
                    child: Container(
                      width: 412,
                      height: 400,
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 95,
                            height: 95,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/flower1.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.fromLTRB(8, 0, 5, 11),
                          ),
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/flowers.JPG"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.fromLTRB(5, 0, 5, 11),
                          ),
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/flower2.jpeg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.fromLTRB(5, 0, 5, 11),
                          ),
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/flower4.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.fromLTRB(5, 0, 5, 11),
                          )
                        ],
                      ),
                    )),
                Flexible(
                    flex: 2,
                    child: Container(
                      height: 50,
                      width: 1000,
                      child: Text(
                        "Welcome To Golden Tulip Holland Batu",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Flexible(
                  flex: 8,
                  child: Container(
                    width: 700,
                    height: 1000,
                    margin: EdgeInsets.only(left: 25, right: 10),
                    child: ListView(
                      children: <Widget>[
                        Text(
                          "       Welcome To Golden Tulip Holland Batu Welcome To Golden Tulip Holland Welcome To Golden Tulip Holland Batu Welcome To Golden Tulip Holland Batu Welcome To Golden Tulip Holland Batu Welcome To Golden Tulip Holland Batu Welcome",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "       Welcome To Golden Tulip Holland Batu Welcome To Golden Tulip Holland Welcome To Golden Tulip Holland Batu Welcome To Golden Tulip Holland Batu Welcome To Golden Tulip Holland Batu Welcome To Golden Tulip Holland Batu Welcome",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "       Welcome To Golden Tulip Holland Batu Welcome To Golden Tulip Holland Welcome To Golden Tulip Holland Batu Welcome To Golden Tulip Holland Batu Welcome To Golden Tulip Holland Batu Welcome To Golden Tulip Holland Batu Welcome",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "       Welcome To Golden Tulip Holland Batu Welcome To Golden Tulip Holland Welcome To Golden Tulip Holland Batu Welcome To Golden Tulip Holland Batu Welcome To Golden Tulip Holland Batu Welcome To Golden Tulip Holland Batu Welcome",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          " ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 25, right: 25),
              child: FloatingActionButton(
                  child: Icon(
                    Icons.favorite,
                    color: _hasBeenPressed ? Colors.red : Colors.grey,
                  ),
                  backgroundColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      _hasBeenPressed = !_hasBeenPressed;
                    });
                  }),
            ),
            Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 25, right: 25),
              child: FlatButton(
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(colors: <Color>[
                          Colors.redAccent,
                          Colors.blueAccent
                        ])),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Book now",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Buy();
                    }));
                  }),
            )
          ],
        ),
      ),
    );
  }
}

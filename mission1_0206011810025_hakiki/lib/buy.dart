import 'package:flutter/material.dart';
import 'package:flutter_widget/home.dart';

class Buy extends StatefulWidget {
  @override
  _BuyState createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  var name;
  var phone;
  var kota;
  var alamat;

  final nameCon = new TextEditingController();
  final phoneCon = new TextEditingController();
  final kotaCon = new TextEditingController();
  final alamatCon = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buy"),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 65),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: nameCon,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              suffix: Container(
                                width: 5,
                                height: 5,
                                color: Colors.red,
                              ),
                              prefixIcon: Icon(Icons.person),
                              prefixText: "Name : ",
                              prefixStyle: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600),
                              labelText: "Full Name",
                              hintStyle: TextStyle(fontSize: 12),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: alamatCon,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              suffix: Container(
                                width: 5,
                                height: 5,
                                color: Colors.red,
                              ),
                              prefixIcon: Icon(Icons.person),
                              prefixText: "Email address : ",
                              prefixStyle: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600),
                              labelText: "Your email",
                              hintStyle: TextStyle(fontSize: 12),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: phoneCon,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              suffix: Container(
                                width: 5,
                                height: 5,
                                color: Colors.red,
                              ),
                              prefixIcon: Icon(Icons.phone_android),
                              prefixText: "Phone number : ",
                              prefixStyle: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600),
                              labelText: "Your phone",
                              hintStyle: TextStyle(fontSize: 12),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: kotaCon,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              suffix: Container(
                                width: 5,
                                height: 5,
                                color: Colors.red,
                              ),
                              prefixIcon: Icon(Icons.location_city),
                              prefixText: "City : ",
                              prefixStyle: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600),
                              labelText: "Your city",
                              hintStyle: TextStyle(fontSize: 12),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                    flex: 2,
                    child: Container(
                      child: RaisedButton(
                          child: Text(
                            "Book Now",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blue,
                          onPressed: () {
                            setState(() {
                              name = nameCon.text;
                              alamat = alamatCon.text;
                              phone = phoneCon.text;
                              kota = kotaCon.text;
                            });

                            if (name != "" &&
                                alamat != "" &&
                                phone != "" &&
                                kota != "") {
                              return showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        overflow: Overflow.visible,
                                        children: <Widget>[
                                          Positioned(
                                              top: -50,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.blue,
                                                child: Text(
                                                  "Success",
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                ),
                                                radius: 50,
                                              )),
                                          Container(
                                            height: 270,
                                            width: 190,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 60,
                                                  ),
                                                  new Text(
                                                    "Book Success",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  new Text(
                                                    "$name",
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  new Text(
                                                    "$alamat",
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: FlatButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) {
                                                            return NextGo();
                                                          }));
                                                        },
                                                        child:
                                                            Text("Continue")),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  });
                            }
                            return showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(80)),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      overflow: Overflow.visible,
                                      children: <Widget>[
                                        Positioned(
                                            top: -50,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.blue,
                                            ))
                                      ],
                                    ),
                                  );
                                });
                          }),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

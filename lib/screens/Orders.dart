import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  List OderList = [];
  Future<List<ORder>> futureAlbum;

  Future<List<ORder>> GET() async {
    List<ORder> list = [];
    String Url = "https://arcan-b5c08-default-rtdb.firebaseio.com/order.json";
    var res = await http.get(
      Uri.parse(Url),
    );
    Map resDecoded = json.decode(res.body);
    for (var i in resDecoded.keys) {
      list.add(ORder.fromJSON(resDecoded['$i']));
    }
    return list;
  }

  @override
  void initState() {
    super.initState();
    futureAlbum = GET();
  }

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return SafeArea(
      child: FutureBuilder<List<ORder>>(
        future: futureAlbum,
        builder: (ctx, snap) {
          return snap.hasData
              ? ListView.builder(
                  padding: EdgeInsets.symmetric(
                      horizontal: mq.width * 0.03, vertical: mq.height * 0.01),
                  itemCount: snap.data.length,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        index == 0
                            ? Text(
                                'الطلبات',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 55),
                              )
                            : SizedBox(),
                        SizedBox(
                          height: mq.height * 0.03,
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(vertical: mq.height * 0.02),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 2.0,
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            height: mq.height * 0.4,
                            child: DefaultTextStyle(
                              style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(width: mq.width * 0.85,),
                                  Text(snap.data[index].name),
                                  Text(snap.data[index].phoneNum),
                                  Text(snap.data[index].adders),
                                  Text(snap.data[index].oder),
                                ],
                              ),
                            )),
                      ],
                    );
                  },
                )
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class ORder {
  final String name;
  final String adders;
  final String phoneNum;
  final String oder;

  ORder({
    @required this.name,
    @required this.adders,
    @required this.phoneNum,
    @required this.oder,
  });

  factory ORder.fromJSON(jsonData) {
    return ORder(
        name: jsonData['Name'],
        adders: jsonData['Adders'],
        phoneNum: jsonData['PhoneNumber'],
        oder: jsonData['Oder']);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BusInfo extends StatelessWidget {
  final List<dynamic> timeTable;
  final double width;
  final String title;

  const BusInfo(
      {Key key,@required this.timeTable, @required this.width, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double rate = 1 / 375.0;
    double fullWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            color: const Color(0xff000000),
            fontWeight: FontWeight.w600,
            fontFamily: "NotoSansKR",
            fontStyle: FontStyle.normal,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                width: width,
                height: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          timeTable[0]["min"],
                          style: const TextStyle(
                            color: const Color(0xff131415),
                            fontWeight: FontWeight.w500,
                            fontFamily: "NotoSansKR",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0,
                            letterSpacing: -0.28,
                          ),
                        ),
                        Spacer(),
                        Text(
                          timeTable[0]["content"],
                          style: const TextStyle(
                            color: const Color(0xff666666),
                            fontWeight: FontWeight.w500,
                            fontFamily: "NotoSansKR",
                            fontStyle: FontStyle.normal,
                            fontSize: 12.0,
                            height: 1.2,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: <Widget>[
                        Text(
                          "다음차",
                          style: const TextStyle(
                            color: const Color(0xff131415),
                            fontWeight: FontWeight.w500,
                            fontFamily: "NotoSansKR",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0,
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset("images/BusPage/bus_min1.jpg"),
                        ),
                      ],
                    ),
                  ],
                ),
                padding: EdgeInsets.only(
                  left: 7.0,
                  right: 7.0,
                  top: 4.0,
                  bottom: 4.0,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border:
                        Border.all(color: const Color(0xff842fb5), width: 2),
                    color: const Color(0xffffffff))),
            SizedBox(width: 13.0 * fullWidth * rate),
            Container(
                width: width,
                height: 80,
                padding: EdgeInsets.only(
                  left: 7.0,
                  right: 7.0,
                  top: 4.0,
                  bottom: 4.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          timeTable[1]["min"],
                          style: const TextStyle(
                            color: const Color(0xff131415),
                            fontWeight: FontWeight.w500,
                            fontFamily: "NotoSansKR",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0,
                            letterSpacing: -0.28,
                          ),
                        ),
                        Spacer(),
                        Text(
                          timeTable[1]["content"],
                          style: const TextStyle(
                            color: const Color(0xff666666),
                            fontWeight: FontWeight.w500,
                            fontFamily: "NotoSansKR",
                            fontStyle: FontStyle.normal,
                            height: 1.2,
                            fontSize: 12.0,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "다다음차",
                          style: const TextStyle(
                            color: const Color(0xff131415),
                            fontWeight: FontWeight.w500,
                            fontFamily: "NotoSansKR",
                            fontStyle: FontStyle.normal,
                            fontSize: 12.0,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset("images/BusPage/bus_min2.jpg"),
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border:
                        Border.all(color: const Color(0xff737373), width: 1),
                    color: const Color(0xffffffff))),
            SizedBox(width: 13.0 * fullWidth * rate),
            Container(
              width: width,
              height: 80,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        timeTable[2]["min"],
                        style: const TextStyle(
                          color: const Color(0xff131415),
                          fontWeight: FontWeight.w500,
                          fontFamily: "NotoSansKR",
                          fontStyle: FontStyle.normal,
                          fontSize: 16.0,
                          letterSpacing: -0.28,
                        ),
                      ),
                      Spacer(),
                      Text(
                        timeTable[2]["content"],
                        style: const TextStyle(
                          color: const Color(0xff666666),
                          fontWeight: FontWeight.w500,
                          fontFamily: "NotoSansKR",
                          fontStyle: FontStyle.normal,
                          fontSize: 12.0,
                          height: 1.2,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      Text(
                        "다다다음차",
                        style: const TextStyle(
                          color: const Color(0xff131415),
                          fontWeight: FontWeight.w500,
                          fontFamily: "NotoSansKR",
                          fontStyle: FontStyle.normal,
                          fontSize: 12.0,
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset("images/BusPage/bus_min2.jpg"),
                      ),
                    ],
                  ),
                ],
              ),
              padding: EdgeInsets.only(
                left: 7.0,
                right: 7.0,
                top: 4.0,
                bottom: 4.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  color: const Color(0xff737373),
                  width: 1,
                ),
                color: const Color(0xffffffff),
              ),
            )
          ],
        ),
      ],
    );
  }
}

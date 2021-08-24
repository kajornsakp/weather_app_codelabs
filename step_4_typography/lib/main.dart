import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Metropolis',
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              bodyText2:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/desert.png'), fit: BoxFit.none),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("WED, 01 April",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w800)),
                          Text("It's sunny",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w200)),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        "assets/bigsun.png",
                        width: 72,
                        height: 72,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "40°c",
                        style: TextStyle(
                            fontSize: 84,
                            fontWeight: FontWeight.w200,
                            height: 1),
                      ),
                      SizedBox(width: 12),
                      Text("40° / 33°",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w200)),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("El Dakhla Oasis, Egypt",
                              style: TextStyle(fontSize: 20)),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Sunset 8:19 PM",
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          color: Colors.white.withOpacity(0.2),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('Today', style: TextStyle(fontSize: 20)),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text('Tomorrow',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Colors.white.withOpacity(0.7))),
                                  Spacer(),
                                  Image.asset(
                                    'assets/refresh.png',
                                    width: 16,
                                    height: 16,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    HourlyPrediction(
                                        time: "12:00", temp: "40°"),
                                    SizedBox(
                                      width: 24,
                                    ),
                                    HourlyPrediction(
                                        time: "13:00", temp: "40°"),
                                    SizedBox(
                                      width: 24,
                                    ),
                                    HourlyPrediction(
                                        time: "14:00", temp: "40°"),
                                    SizedBox(
                                      width: 24,
                                    ),
                                    HourlyPrediction(
                                        time: "15:00", temp: "40°"),
                                    SizedBox(
                                      width: 24,
                                    ),
                                    HourlyPrediction(
                                        time: "16:00", temp: "40°"),
                                    SizedBox(
                                      width: 24,
                                    ),
                                    HourlyPrediction(
                                        time: "17:00", temp: "40°"),
                                    SizedBox(
                                      width: 24,
                                    ),
                                    HourlyPrediction(
                                        time: "18:00", temp: "40°"),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Wind",
                                              style: TextStyle(fontSize: 20)),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Image.asset(
                                            'assets/windy.png',
                                            height: 16,
                                            width: 16,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.baseline,
                                        textBaseline: TextBaseline.alphabetic,
                                        children: [
                                          Text(
                                            "8",
                                            style: TextStyle(fontSize: 60),
                                          ),
                                          Text(
                                            "Km/h",
                                            style: TextStyle(fontSize: 20),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Humidity",
                                              style: TextStyle(fontSize: 20)),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Image.asset(
                                            'assets/humidity.png',
                                            height: 16,
                                            width: 16,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.baseline,
                                        textBaseline: TextBaseline.alphabetic,
                                        children: [
                                          Text(
                                            "24",
                                            style: TextStyle(fontSize: 60),
                                          ),
                                          Text(
                                            "%",
                                            style: TextStyle(fontSize: 20),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
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
          ),
        ),
      ),
    );
  }
}

class HourlyPrediction extends StatelessWidget {
  const HourlyPrediction({Key? key, required this.time, required this.temp})
      : super(key: key);

  final String time;
  final String temp;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          time,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
        ),
        SizedBox(height: 20),
        Image.asset(
          'assets/sunny.png',
          width: 28,
          height: 28,
        ),
        SizedBox(height: 12),
        Text(temp, style: TextStyle(fontSize: 14))
      ],
    );
  }
}

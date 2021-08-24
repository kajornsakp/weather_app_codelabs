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
          primarySwatch: Colors.blue,
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
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
                          Text("WED, 01 April"),
                          Text("It's sunny"),
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
                  Row(
                    children: [
                      Text("40° c"),
                      Text("40° / 33°"),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("El Dakhla Oasis, Egypt"),
                          Text("Sunset 8:19 PM"),
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
                                  Text('Today'),
                                  Text('Tomorrow'),
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
                                    Column(
                                      children: [
                                        Text("12:00"),
                                        SizedBox(height: 20),
                                        Image.asset(
                                          'assets/sunny.png',
                                          width: 28,
                                          height: 28,
                                        ),
                                        SizedBox(height: 12),
                                        Text("40°")
                                      ],
                                    ),
                                    SizedBox(
                                      width: 24,
                                    ),
                                    Column(
                                      children: [
                                        Text("13:00"),
                                        SizedBox(height: 20),
                                        Image.asset(
                                          'assets/sunny.png',
                                          width: 28,
                                          height: 28,
                                        ),
                                        SizedBox(height: 12),
                                        Text("40°")
                                      ],
                                    ),
                                    SizedBox(
                                      width: 24,
                                    ),
                                    Column(
                                      children: [
                                        Text("14:00"),
                                        SizedBox(height: 20),
                                        Image.asset(
                                          'assets/sunny.png',
                                          width: 28,
                                          height: 28,
                                        ),
                                        SizedBox(height: 12),
                                        Text("40°")
                                      ],
                                    ),
                                    SizedBox(
                                      width: 24,
                                    ),
                                    Column(
                                      children: [
                                        Text("15:00"),
                                        SizedBox(height: 20),
                                        Image.asset(
                                          'assets/sunny.png',
                                          width: 28,
                                          height: 28,
                                        ),
                                        SizedBox(height: 12),
                                        Text("40°")
                                      ],
                                    ),
                                    SizedBox(
                                      width: 24,
                                    ),
                                    Column(
                                      children: [
                                        Text("16:00"),
                                        SizedBox(height: 20),
                                        Image.asset(
                                          'assets/sunny.png',
                                          width: 28,
                                          height: 28,
                                        ),
                                        SizedBox(height: 12),
                                        Text("40°")
                                      ],
                                    ),
                                    SizedBox(
                                      width: 24,
                                    ),
                                    Column(
                                      children: [
                                        Text("17:00"),
                                        SizedBox(height: 20),
                                        Image.asset(
                                          'assets/sunny.png',
                                          width: 28,
                                          height: 28,
                                        ),
                                        SizedBox(height: 12),
                                        Text("40°")
                                      ],
                                    ),
                                    SizedBox(
                                      width: 24,
                                    ),
                                    Column(
                                      children: [
                                        Text("18:00"),
                                        SizedBox(height: 20),
                                        Image.asset(
                                          'assets/sunny.png',
                                          width: 28,
                                          height: 28,
                                        ),
                                        SizedBox(height: 12),
                                        Text("40°")
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Wind"),
                                          Image.asset(
                                            'assets/windy.png',
                                            height: 16,
                                          )
                                        ],
                                      ),
                                      Text("8km/h")
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
                                          Text("Humidity"),
                                          Image.asset(
                                            'assets/humidity.png',
                                            height: 16,
                                          )
                                        ],
                                      ),
                                      Text("24%"),
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

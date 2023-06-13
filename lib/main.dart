import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Message Screen',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: CustomWidget(),
    );
  }
}

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset('images/lake.jpg', height: 300),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text('Oeschinen Lake Campground'),
                            Text(
                              'Kandersteg, Switzerland',
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Icon(
                          Icons.star,
                          color: Colors.red[500],
                        ),
                        const Text('41'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.call, color: Colors.blue),
                        SizedBox(height: 10),
                        Text('CALL',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.near_me, color: Colors.blue),
                        SizedBox(height: 10),
                        Text('CALL',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.share, color: Colors.blue),
                        SizedBox(height: 10),
                        Text('CALL',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                      'Alps. Situated 1,578 meters above sea level, it is one of the '
                      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                      'half-hour walk through pastures and pine forest, leads you to the '
                      'lake, which warms to 20 degrees Celsius in the summer. Activities '
                      'enjoyed here include rowing, and riding the summer toboggan run.',
                      softWrap: true,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

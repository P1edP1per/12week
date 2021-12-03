import 'package:flutter/material.dart';

import 'index/index.dart';
import 'map/map.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lab 12"),
          centerTitle: true,
          backgroundColor: Color(0xff47536D),
        ),
        body: IndexPage(),
      ),
    ));

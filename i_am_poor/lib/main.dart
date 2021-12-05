import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black38,
          title: Text('I Am Poor'),
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
              'https://images.assetsdelivery.com/compings_v2/nsit0108/nsit01081907/nsit0108190700505.jpg',
            ),
          ),
        ),
      ),
    ),
  );
}

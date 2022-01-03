import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search),
        title: Text('Search'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
       child: Text('Search',style: TextStyle(fontSize: 60),),
      ),
    );
  }
}
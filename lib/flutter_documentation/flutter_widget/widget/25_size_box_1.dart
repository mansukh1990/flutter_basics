/*
Size Box
   - A box with a specific size.if either the width or height is set to null,this widget will try to size itself to
     match the child's size in that dimensions.If the child's size depends on size of its parent.
     The height and width must be provided.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Size Box")),
        body: SizedBox.square(
          dimension: 100,
          //  height: double.infinity,
          //   width: double.infinity,
          child: Card(
            color: Colors.orange,
            child: Center(child: Text("Hello")),
          ),
        ),
      ),
    ),
  );
}

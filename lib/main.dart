import 'package:flutter/material.dart';
import 'package:photos/providers/PhotoProvider.dart';
import 'package:photos/ui/PhotoList.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => PhotoProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhotoListView(),
    ),
  ));
}

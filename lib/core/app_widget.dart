import 'package:flutter/material.dart';
import 'package:web/Page/Responsividade_Layout_builder.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo Web',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: ResponsividadeMedia(title: 'Responsividade'),
        // home: ResponsividadeRowColumn(title: 'Responsividade Column e Row'),
        // home: ResponsividadeWrap(title: 'Responsividade Wrap'),
        // home: ResponsividadeOrientationBuilder(title: 'Responsividade Orientation Builder'),
        home: ResponsividadeRegrasLayout(title: 'Responsividade Orientation Builder'),
        debugShowCheckedModeBanner: false);
  }
}
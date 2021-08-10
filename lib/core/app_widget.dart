import 'package:flutter/material.dart';
import 'package:web/Page/Responsividade_row_column.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo Web',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: ResponsividadeMedia(title: 'Responsividade'),
        home: ResponsividadeRowColumn(title: 'Responsividade Column e Row'),
        debugShowCheckedModeBanner: false);
  }
}
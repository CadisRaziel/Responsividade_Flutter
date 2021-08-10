import 'package:flutter/material.dart';
import 'package:web/Page/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo Web',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ResponsividadeMedia(title: 'Responsividade'),
        debugShowCheckedModeBanner: false);
  }
}
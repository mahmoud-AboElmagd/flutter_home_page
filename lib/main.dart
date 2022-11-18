
import 'package:home_page/mainPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  StateClass createState() =>StateClass();
}

class StateClass extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green,
      ),
      home: const MainPage(),
    );
  }
}

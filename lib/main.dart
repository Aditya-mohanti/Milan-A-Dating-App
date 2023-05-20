import 'package:flutter/material.dart';
import 'package:library_app/homepage/homepagee.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: const Color(0xff29274F),
      ),
      home: const Homepage(),
    );
  }
}
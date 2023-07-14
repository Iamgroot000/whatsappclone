import 'package:flutter/material.dart';
import 'package:whatsappclone/whatsapp.dart';



void main()  {
  runApp(MyApp());

}
class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp",
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
        hintColor: Color(0xff25D366),

      ),
        debugShowCheckedModeBanner: false,
        home: WhatsappHome(),
      );

  }
}

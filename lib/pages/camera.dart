import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Text("Camera",style: TextStyle(fontSize: 20.0),),

    );
  }
}

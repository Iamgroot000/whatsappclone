import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/callscreen.dart';
import 'package:whatsappclone/pages/camera.dart';
import 'package:whatsappclone/pages/chatscreen.dart';
import 'package:whatsappclone/pages/statusscreen.dart';

class WhatsappHome extends StatefulWidget {
  const WhatsappHome({Key? key}) : super(key: key);

  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Whatsapp"),
          elevation: 0.7,
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.camera_alt)),
              new Tab(text: "CHATS"),
              new Tab(text: "STATUS"),
              new Tab(text: "CALLS"),

            ],

        ),
    actions: <Widget>[
       Icon(Icons.search),Padding(
        padding:const EdgeInsets.symmetric(horizontal: 5.0)
      ), Icon(Icons.more_vert)
    ],
        ),

    body:new TabBarView(
    controller: _tabController,
    children: <Widget>[
     new CameraScreen(),
      new ChatScreen(),
    new StatusScreen(),
    new CallsScreen(),

    ],
    ),
      floatingActionButton: new FloatingActionButton(
    backgroundColor: Theme.of(context).hintColor,
    child: new Icon(Icons.message,
    color: Colors.white,),
    onPressed: () =>print("open chats"),
      ),
    );

  }
}




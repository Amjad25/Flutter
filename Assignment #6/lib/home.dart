import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor:
         Colors.teal[900],
          title: const Text("WhatsApp "),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded))
          ],
          bottom: TabBar(
            controller: _tabController,
 
            labelPadding: EdgeInsets.all(10),
            tabs: [
              IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt) ),
              Container(
                width: 90,
                alignment: Alignment.center
                , child: Text("CHATS")),
               Container(
                width: 90,
                alignment: Alignment.center
                , child: Text("STATUS")), Container(
                width: 90,
                alignment: Alignment.center
                , child: Text("CALLS")),
              
            ],
          )),
      body: TabBarView(controller: _tabController, children: [
        Text("CHATS"),
        Text("CHATS"),
        Text("CHATS"),
        Text("CHATS"),
      ]),
    );
  }
}

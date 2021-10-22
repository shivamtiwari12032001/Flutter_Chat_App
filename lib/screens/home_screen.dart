import 'package:chat_app/pages/chat_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatapp Clone"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("New Group"),
                value: "New Group",
              ),
              PopupMenuItem(
                child: Text("New BroadCast"),
                value: "New BroadCast",
              ),
              PopupMenuItem(
                child: Text("Whatapp Web"),
                value: "Whatapp Web",
              ),
              PopupMenuItem(
                child: Text("Starred Messages"),
                value: "Starred Messages",
              ),
              PopupMenuItem(
                child: Text("Settings"),
                value: "Settings",
              ),
            ];
          })
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _controller,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text("Camera"),
          ChatPage(),
          Text("status"),
          Text("Calls"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsappclone/views/camera.dart';
import 'package:whatsappclone/views/chatsPage.dart';
import 'package:whatsappclone/views/status.dart';

import 'callsPage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.camera_alt,
                  color: Color.fromRGBO(18, 140, 126, 1),
                ),
              ),
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              )
            ],
          ),
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: const Color.fromRGBO(7, 94, 84, 1),
          title: const Text('WhatsApp'),
          centerTitle: false,
          actions: const [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: null,
                icon: Icon(Icons.more_vert, color: Colors.white)),
          ],
        ),
        body: const TabBarView(
          children: [
            Camera(),
            Chats(),
            Status(),
            Calls(),
          ],
        ),
        floatingActionButton: SizedBox(
            height: 100,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color.fromRGBO(7, 94, 84, 1),
              elevation: 3,
              child: Icon(Icons.chat),
            )),
      ));
}

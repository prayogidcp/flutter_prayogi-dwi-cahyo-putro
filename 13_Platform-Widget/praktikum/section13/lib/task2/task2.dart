import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

enum Sky {Contact, Calls, Chats, Setting}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        leading: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            "Edit",
            style: TextStyle(
              color: Color(0xFF78C5EF),
            ),
          ),
        ),
        middle: Text(
          "Chats",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Icon(
          CupertinoIcons.plus_rectangle,
        ),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.person_circle_fill,
                ),
                label: "Contact"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone_fill), label: "Calls"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_2_fill), label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings), label: "Settings"),
          ],
        ),
        tabBuilder: (context, index) {
          return Container(
              child: Padding(
            padding: const EdgeInsets.only(top: 110),
            child: Column(
              children: [
                list(
                    url: 'images/tele.png',
                    name: "Telegram",
                    tym: "23.33",
                    desc: "Login Code : 59123",
                    msg: "10",
                    isRead: true),
                const Divider(
                  height: 0.2,
                ),
                list(
                    url: 'images/tele.png',
                    name: "Prayogi",
                    tym: "22.20",
                    desc: "Susah brow",
                    msg: "12",
                    isRead: true),
                const Divider(
                  height: 0.2,
                ),
                list(
                    url: 'images/tele.png',
                    name: "Dwi",
                    tym: "21.20",
                    desc: "Beneran",
                    msg: "10",
                    isRead: true),
                const Divider(
                  height: 0.2,
                ),
                list(
                    url: 'images/tele.png',
                    name: "Cahyo",
                    tym: "20.24",
                    desc: "Susahhhhhhh",
                    msg: "11",
                    isRead: true),
                const Divider(
                  height: 0.2,
                ),
                list(
                    url: 'images/tele.png',
                    name: "Putro",
                    tym: "18.30",
                    desc: "Emang iya?",
                    msg: "15",
                    isRead: true),
                const Divider(
                  height: 0.2,
                ),
              ],
            ),
          ),
          );
        },
      ),
    );
  }

  CupertinoListTile list(
      {String? url,
      String? name,
      String? tym,
      String? desc,
      String? msg,
      bool? isRead}) {
    return CupertinoListTile(
      padding: EdgeInsets.only(top: 5, left: 10),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: ExactAssetImage(url!),
      ),
      title: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Row(
          children: [
            Text(
              name!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            Row(
              children: [
                Text(
                  tym!,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              desc!,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Container(
              child: Text(
                msg!,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              decoration: BoxDecoration(
                border: isRead! ? Border.all(width: 1) : Border.all(width: 0),
                borderRadius: BorderRadius.circular(50),
                color: isRead ? Colors.blue : Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  search() {
    CupertinoSearchTextField(
      placeholder: "Search",
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(YogiApp());

class YogiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff55879F),
        title: const Text(
          "Telegram",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 180,
              color: Colors.blue,
              child: Container(
                width: double.infinity,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: ExactAssetImage('images/tele.png'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "PRAYOGI DWI CAHYO PUTRO",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "+62 89652366540",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            size: 25,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            tile(msg: "New Group", im: Icons.people),
            tile(msg: "New Seceret Chat", im: Icons.lock),
            tile(msg: "New Channel", im: Icons.speaker_notes),
            const Divider(
              height: 10,
            ),
            tile(msg: "Contacts", im: Icons.contact_page_sharp),
            tile(msg: "Invite Friends", im: Icons.assignment_ind),
            tile(msg: "Settings", im: Icons.settings),
            tile(msg: "Telegram FAQ", im: Icons.question_answer),
          ],
        ),
      ),
      body: Column(
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
              name: "PRAYOGI",
              tym: "22.20",
              desc: "Susah brow",
              msg: "12",
              isRead: true),
          const Divider(
            height: 0.2,
          ),
          list(
              url: 'images/tele.png',
              name: "DWI",
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
    );
  }

  ListTile tile({String? msg, IconData? im}) {
    return ListTile(
      leading: Icon(
        im,
        color: Colors.black54,
        size: 30,
      ),
      title: Text(
        msg!,
        style: const TextStyle(
            color: Colors.black54, fontSize: 18, fontWeight: FontWeight.w800),
      ),
    );
  }

  ListTile list(
      {String? url,
      String? name,
      String? tym,
      String? desc,
      String? msg,
      bool? isRead}) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 5, left: 10),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: ExactAssetImage(url!),
      ),
      title: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            Text(
              tym!,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
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
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
              decoration: BoxDecoration(
                border: isRead! ? Border.all(width: 1) : Border.all(width: 0),
                borderRadius: BorderRadius.circular(50),
                color: isRead ? Colors.green : Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:snapy/widgets/messageRow.dart';
import 'package:snapy/widgets/storieCircle.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff95ACFF),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Ejemplo de menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Snapy',
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff95ACFF),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StorieCircle(),
                  StorieCircle(),
                  StorieCircle(),
                  StorieCircle(),
                  StorieCircle(),
                  StorieCircle(),
                  StorieCircle(),
                  StorieCircle(),
                  StorieCircle(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Text(
                        'Chats',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(
                            'All',
                            style: TextStyle(
                              color: Color(0xff95ACFF),
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Friends',
                            style: TextStyle(
                              color: Color(0xff4C4C4E),
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Family',
                            style: TextStyle(
                              color: Color(0xff4C4C4E),
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Work',
                            style: TextStyle(
                              color: Color(0xff4C4C4E),
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '+',
                            style: TextStyle(
                              color: Color(0xff4C4C4E),
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                          MessageRow(),
                          MessageRow(),
                          MessageRow(),
                          MessageRow(),
                          MessageRow(),
                          MessageRow(),
                          MessageRow(),
                          MessageRow(),
                          MessageRow(),
                          MessageRow(),
                          MessageRow(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

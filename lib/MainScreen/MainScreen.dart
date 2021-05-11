import 'dart:ui';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainScreenState createState() => _MainScreenState();
}

enum SingingCharacter { excitement, verbal }

class _MainScreenState extends State<MainScreen> {
  SingingCharacter _character = SingingCharacter.verbal;

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Hello, Ali"),
            centerTitle: true,
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                icon: Icon(Icons.notifications_none),
                onPressed: () {},
              )
            ],
            //backgroundColor: Colors.orangeAccent,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [Colors.orangeAccent, Colors.orange],
                begin: Alignment.bottomRight,
              )),
            ),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.local_activity),
                  text: 'Aktiviteler',
                ),
                Tab(
                  icon: Icon(Icons.perm_device_information),
                  text: 'Performansım',
                ),
                Tab(
                  icon: Icon(Icons.verified_user_sharp),
                  text: 'Profilim',
                ),
              ],
            ),
            elevation: 20,
          ),
          body: TabBarView(
            children: [
              buildMainPage('Ücretsiz Aktiviteler'),
              buildPage('Performansım'),
              buildPage('Profilim'),
            ],
          ),
        ),
      );
  Widget buildPage(String text) => Center(
          child: Text(
        text,
        style: TextStyle(fontSize: 28),
      ));
  Widget buildMainPage(String text) => Scaffold(
        body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Divider(
                  thickness: 1,
                )),
                Text("Multiple Choice Quiz"),
                Expanded(
                    child: Divider(
                  thickness: 1,
                )),
              ]),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.orange, spreadRadius: 3),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "What is the meaning of 'heyecan' in English? ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: ListTile(
                          title: const Text(
                            'Excitement',
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.excitement,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text(
                            'Verbal',
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.verbal,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.orange, spreadRadius: 3),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "_________   one of my bestfriends? ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: ListTile(
                          title: const Text(
                            'He is',
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.excitement,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text(
                            'It is',
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.verbal,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.orange, spreadRadius: 3),
                ],
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          image: AssetImage('assets/pencil.jpg'),
                          alignment: Alignment.center,
                          width: 150,
                          height: 150,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "What is the name of the object depicted in the figure?",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        ListTile(
                          title: const Text(
                            'Verbal',
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.verbal,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text(
                            'Verbal',
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.verbal,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Divider(
                  thickness: 1,
                )),
                Text("Multiple Choice Quiz"),
                Expanded(
                    child: Divider(
                  thickness: 1,
                )),
              ]),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.orange, spreadRadius: 3),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "_________   one of my bestfriends? ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: ListTile(
                          title: const Text(
                            'He is',
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.excitement,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text(
                            'It is',
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.verbal,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.orange, spreadRadius: 3),
                ],
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          image: AssetImage('assets/pencil.jpg'),
                          alignment: Alignment.center,
                          width: 150,
                          height: 150,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "What is the name of the object depicted in the figure?",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        ListTile(
                          title: const Text(
                            'Verbal',
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.verbal,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text(
                            'Verbal',
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.verbal,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
}

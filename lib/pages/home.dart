import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  String _timezone = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'The John Main Seminar 2020',
          style: TextStyle(fontSize: 18),
        ),
      ),
      drawer: Drawer(
        //#de8a76
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'The John Main Seminar 2020',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              //accountEmail: Text('Links to our online resources'),
              currentAccountPicture: (CircleAvatar(
                backgroundColor: Colors.white,
                radius: 190.0,
                backgroundImage: AssetImage(
                  'assets/images/Logo.png',
                ),
              )),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(0.0),
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.school,
                      color: Colors.grey,
                    ),
                    title: Text('The School of Meditation'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.book,
                      color: Colors.grey,
                    ),
                    title: Text('Bookstore'),
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
        elevation: defaultTargetPlatform == TargetPlatform.iOS ? 0.0 : 5.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Text('MrCK'),
              ),
              accountName: Text('Mr CK'),
              accountEmail: Text('rashidmrck@gmail.com'),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.lightBlue, child: Text('CK')),
              ],
            ),
            ListTile(
              title: Text('Page1'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (BuildContext contect) => Page1('Poda Pulle')));
                Navigator.of(context).pushNamed('/page1');
              },
            ),
            ListTile(
              title: Text('Page2'),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/page2');
              },
            ),
            ListTile(
              title: Text('Page3'),
              trailing: Icon(Icons.arrow_right),
            ),
            ListTile(
              title: Text('Page4'),
              trailing: Icon(Icons.arrow_right),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Drawer',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

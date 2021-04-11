import 'package:flutter/material.dart';
import '../../constants/route_path.dart';

import '../contacts/contacts.dart';
import '../discover/discover.dart';
import '../msg/msg.dart';
import '../personal/personal.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

const navSelMsg = 0;
const navSelContacts = 1;
const navSelDiscover = 2;
const navSelPersonal = 3;

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<String> _navTitles = [
    '信息',
    '联系人',
    '发现',
    '我',
  ];

  static List<Widget> _widgetOptions = <Widget>[
    MsgWidget(),
    ContactsWidget(),
    DiscoverWidget(),
    PersonalWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: _selectedIndex == navSelPersonal ? AppBar() : AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(_navTitles[_selectedIndex]),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: '搜索',
            onPressed: () {
              Navigator.pushNamed(context, RoutePath.searchPage);
            },
          ),
          _AddIconBtn(),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '信息',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt),
            label: '联系人',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assistant_navigation),
            label: '发现',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '我',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class _AddIconBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.add_circle_outline),
      tooltip: '添加',
      onPressed: () {
        final snackBar = SnackBar(
          content: Text('Yay! Clicked "Add" button!'),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        );

        // Find the Scaffold in the widget tree and use
        // it to show a SnackBar.
        Scaffold.of(context).showSnackBar(snackBar);
      },
    );
  }
}

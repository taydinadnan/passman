import 'package:flutter/cupertino.dart';
import 'package:passwmanager/screens/calls.dart';
import 'package:passwmanager/screens/chats.dart';
import 'package:passwmanager/screens/person.dart';
import 'package:passwmanager/screens/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomePage(),
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFF08C187),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var screens = [
    ChatsScreen(),
    CallsScreen(),
    PersonScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        resizeToAvoidBottomInset: true,
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_2_fill), label: 'Chats'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone), label: 'Calls'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_alt_circle), label: 'Person'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings), label: 'Chats'),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return screens[index];
        },
      ),
    );
  }
}

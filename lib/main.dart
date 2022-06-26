import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:udemy/pages/FavoritePage.dart';
import 'package:udemy/pages/HomePage.dart';
import 'package:udemy/pages/IdentityPage.dart';
import 'package:udemy/pages/MessagePage.dart';

void main() => runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  var myindex = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final screens = [FavoritePage(), HomePage(), IdentityPage(), MessagePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 55,
        items: <Widget>[
          Icon(Icons.favorite, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.person, size: 30),
          Icon(Icons.message, size: 30),
        ],
        color: Colors.orange,
        buttonBackgroundColor: Colors.blue,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: screens[_page],
      // body: Container(
      //   color: Colors.blueAccent,
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         Text(_page.toString(), textScaleFactor: 10.0),
      //         ElevatedButton(
      //           child: Text('Go To Page of index 1'),
      //           onPressed: () {
      //             final CurvedNavigationBarState? navBarState =
      //                 _bottomNavigationKey.currentState;
      //             navBarState?.setPage(_page);
      //           },
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

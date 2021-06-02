import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_mobile_app/core/consts/color_consts.dart';
import 'package:auto_mobile_app/core/consts/text_style_consts.dart';
import 'package:auto_mobile_app/presentation/request/pages/request_screen.dart';
import 'package:auto_mobile_app/presentation/selection/pages/selection_screen.dart';
import 'package:auto_mobile_app/presentation/chat/pages/chat_screen.dart';
import 'package:auto_mobile_app/presentation/profile/pages/seller_profile_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _bodyWidgets = [
    RequestScreen(),
    SelectionScreen(),
    ChatScreen(),
    ProfileScreen()
  ];

  int _currentView = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      body: _bodyWidgets.elementAt(_currentView),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: WhiteGreyColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 4,
              blurRadius: 10,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: WhiteGreyColor,
          onTap: (int index) {
            setState(() {
              _currentView = index;
            });
          },
          selectedItemColor: BlueColor,
          currentIndex: _currentView,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedLabelStyle: RegularStyle.copyWith(fontSize: 12),
          unselectedLabelStyle: RegularStyle.copyWith(fontSize: 12),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/request.png"),),
              label: 'Заявки',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/selection.png"),),
              label: 'Мои подборки',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/chat.png"),),
              label: 'Чат',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/user.png"),),
              label: 'Профиль',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:auto_mobile_app/core/routes/routes_const.dart';
import 'package:auto_mobile_app/presentation/chat/pages/chat_screen.dart';
import 'package:auto_mobile_app/presentation/choice/pages/choice_screen.dart';
import 'package:auto_mobile_app/presentation/main/pages/main_screen.dart';
import 'package:auto_mobile_app/presentation/profile/pages/courier_profile_screen.dart';
import 'package:auto_mobile_app/presentation/profile/pages/seller_profile_screen.dart';
import 'package:auto_mobile_app/presentation/request/pages/request_screen.dart';
import 'package:auto_mobile_app/presentation/selection/pages/selection_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class AutoRouter {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final parts = routeSettings.name!.split('?');
    final Box box = Hive.box('user');

    switch (parts[0]) {
      case MainRoute:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) => MainScreen(),
        );
      case RequestRoute:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) => RequestScreen(),
        );
      case SelectionRoute:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) => SelectionScreen(),
        );
      case ChatRoute:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) => ChatScreen(),
        );
      case ProfileRoute:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) => box.get('role') == 'Seller'
              ? SellerProfileScreen() : CourierProfileScreen(),
        );
      case AuthRoute:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) => ChoiceScreen(),
        );
      default:
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (_) => CupertinoPageScaffold(
            child: Center(
              child: Text(
                'Ошибка, роут для ${routeSettings.name} не найден',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
    }
  }
}

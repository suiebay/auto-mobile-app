import 'package:auto_mobile_app/core/injection_container.dart';
import 'package:auto_mobile_app/core/routes/router.dart';
import 'package:auto_mobile_app/core/utils/hive/hive_init.dart';
import 'package:auto_mobile_app/presentation/choice/pages/choice_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await initHiveBoxes();

  setupInjections();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) => AutoRouter.generateRoute(settings),
      home: ChoiceScreen(),
    );
  }
}

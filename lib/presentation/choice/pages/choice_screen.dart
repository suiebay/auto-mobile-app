import 'package:auto_mobile_app/core/routes/routes_const.dart';
import 'package:auto_mobile_app/presentation/choice/widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_mobile_app/core/consts/color_consts.dart';
import 'package:hive/hive.dart';


class ChoiceScreen extends StatelessWidget {
  ChoiceScreen({Key? key}) : super(key: key);

  final Box box = Hive.box('user');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AutoColors.whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget('Seller', AutoColors.redColor, onPressed: () {
              box.put('role', 'Seller');
              Navigator.pushReplacementNamed(context, MainRoute, arguments: 1);
            }),
            SizedBox(height: 16),
            ButtonWidget('Courier', AutoColors.orangeColor, onPressed: () {
              box.put('role', 'Courier');
              Navigator.pushReplacementNamed(context, MainRoute, arguments: 2);
            }),
          ],
        ),
      ),
    );
  }
}

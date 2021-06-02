import 'package:auto_mobile_app/presentation/choice/widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_mobile_app/core/consts/color_consts.dart';


class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget('Seller', RedColor),
            SizedBox(height: 16),
            ButtonWidget('Courier', OrangeColor),
          ],
        ),
      ),
    );
  }
}

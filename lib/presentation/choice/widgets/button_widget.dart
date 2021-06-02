import 'package:flutter/cupertino.dart';
import 'package:auto_mobile_app/core/consts/color_consts.dart';
import 'package:auto_mobile_app/core/consts/text_style_consts.dart';
import 'package:auto_mobile_app/core/routes/routes_const.dart';
import 'package:hive/hive.dart';


// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  final title;
  final color;

  ButtonWidget(this.title, this.color, {Key? key}) : super(key: key);

  Box box = Hive.box('user');

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: color,
      child: Container(
        height: 20,
        width: 60,
        child: Center(
          child: Text(
            title,
            style: BoldStyle.copyWith(color: AutoColors.whiteColor),
          ),
        ),
      ),
      onPressed: () {
        if(title == 'Seller')
          box.put('role', 'Seller');
        else
          box.put('role', 'Courier');
        Navigator.pushReplacementNamed(context, MainRoute, arguments: title == 'Seller' ? 1 : 2);
      },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:auto_mobile_app/core/consts/color_consts.dart';
import 'package:auto_mobile_app/core/consts/text_style_consts.dart';
import 'package:auto_mobile_app/core/routes/routes_const.dart';

class ButtonWidget extends StatelessWidget {
  final title;
  final color;
  const ButtonWidget(this.title, this.color, {Key? key}) : super(key: key);

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
            style: BoldStyle.copyWith(color: WhiteColor),
          ),
        ),
      ),
      onPressed: () {
        Navigator.pushReplacementNamed(context, MainRoute);
      },
    );
  }
}

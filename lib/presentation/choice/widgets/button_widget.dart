import 'package:flutter/cupertino.dart';
import 'package:auto_mobile_app/core/consts/color_consts.dart';
import 'package:auto_mobile_app/core/consts/text_style_consts.dart';

class ButtonWidget extends StatelessWidget {
  final title;
  final color;
  final Function() onPressed;

  ButtonWidget(this.title, this.color, {Key? key, required this.onPressed}) : super(key: key);

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
            style: AutoStyles.boldStyle.copyWith(color: AutoColors.whiteColor),
          ),
        ),
      ),
      onPressed: onPressed
    );
  }
}

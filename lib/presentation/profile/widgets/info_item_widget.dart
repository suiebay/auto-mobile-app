import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_mobile_app/core/consts/color_consts.dart';
import 'package:auto_mobile_app/core/consts/text_style_consts.dart';

class InfoItemWidget extends StatefulWidget {
  final imgUrl;
  final title;
  final Function() onPressed;

  const InfoItemWidget(this.imgUrl, this.title, {Key? key, required this.onPressed}) : super(key: key);

  @override
  _InfoItemWidgetState createState() => _InfoItemWidgetState();
}

class _InfoItemWidgetState extends State<InfoItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: GreyColor, height: 0,),
        MaterialButton(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                SvgPicture.asset(
                    widget.imgUrl,
                    color: BlackGreyColor,
                    height: 16
                ),
                SizedBox(width: 16),
                Text(
                  widget.title,
                  style: RegularStyle,
                ),
                Spacer(),
                Text(
                  'Алматы',
                  style: MediumStyle,
                ),
                Icon(
                  Icons.arrow_right,
                  color: GreyColor,
                )
              ],
            ),
          ),
          onPressed: widget.onPressed,
        ),
      ],
    );
  }
}

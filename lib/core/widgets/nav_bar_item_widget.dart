import 'package:auto_mobile_app/core/consts/color_consts.dart';
import 'package:auto_mobile_app/core/consts/text_style_consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarItemWidget extends StatelessWidget {
  final String imgUrl;
  final String title;
  final int _currentView;

  NavBarItemWidget(this.imgUrl, this.title, this._currentView, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      color: WhiteColor,
      width: MediaQuery.of(context).size.width / 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imgUrl,
            width: 20,
            color: _currentView == 0 && title == 'Заявки'
                ? BlueColor
                : _currentView == 1 && title == 'Мои подборки'
                    ? BlueColor
                    : _currentView == 2 && title == 'Чат'
                        ? BlueColor
                        : _currentView == 3 && title == 'Профиль'
                            ? BlueColor
                            : BlackGreyColor,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: _currentView == 0 && title == 'Заявки'
                ? RegularStyle.copyWith(fontSize: 11, color: BlueColor)
                : _currentView == 1 && title == 'Мои подборки'
                    ? RegularStyle.copyWith(fontSize: 11, color: BlueColor)
                    : _currentView == 2 && title == 'Чат'
                        ? RegularStyle.copyWith(
                            fontSize: 11, color: BlueColor)
                        : _currentView == 3 && title == 'Профиль'
                            ? RegularStyle.copyWith(
                                fontSize: 11, color: BlueColor)
                            : RegularStyle.copyWith(
                                fontSize: 11, color: BlackGreyColor),
          )
        ],
      ),
    );
  }
}

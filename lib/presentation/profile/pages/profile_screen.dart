import 'package:auto_mobile_app/presentation/profile/widgets/info_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_mobile_app/core/consts/color_consts.dart';
import 'package:auto_mobile_app/core/consts/text_style_consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      appBar: AppBar(
        title: Text(
          'Профиль Продовца',
          style: BoldStyle.copyWith(fontSize: 20),
        ),
        backgroundColor: WhiteColor,
        actions: [
          CupertinoButton(
            child: SvgPicture.asset('assets/icons/drawer.svg', color: BlackColor,),
            onPressed: () {
              print('Drawer!');
            }
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: WhiteColor,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: GreyColor.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: 21,
                      top: 21,
                      child: InkWell(
                        child: SvgPicture.asset('assets/icons/pencil.svg'),
                        onTap: () {
                          print('Pencil!');
                        },
                      )
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/avatarS.png'),
                          backgroundColor: GreyColor,
                          radius: 62.5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'Магазин Автозапчастей',
                            style: BoldStyle.copyWith(fontSize: 20),
                          ),
                        ),
                        Text(
                          '8 (777) 777 77 77',
                          style: MediumStyle.copyWith(color: BlackGreyColor),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RatingBarIndicator(
                              rating: 2.75,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Color(0xFFFFD600),
                              ),
                              itemCount: 5,
                              itemSize: 16,
                            ),
                            SizedBox(width: 5),
                            Text(
                              '(126)',
                              style: RegularStyle.copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            SizedBox(width: 28),
                            Text(
                              'Баланс:',
                              style: RegularStyle.copyWith(fontSize: 14),
                            ),
                            SizedBox(width: 7),
                            Text(
                              '800',
                              style: BoldStyle
                            ),
                            Spacer(),
                            CupertinoButton(
                              padding: EdgeInsets.zero,
                              child: Container(
                                width: 100,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: GreenColor
                                ),
                                child: Center(
                                  child: Text(
                                    'Пополнить',
                                    style: RegularStyle.copyWith(color: WhiteColor, fontSize: 14),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                print('Пополнить!');
                              }
                            ),
                            SizedBox(width: 19)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(28, 11, 19, 13),
                          child: Container(
                            height: 1.0,
                            decoration: BoxDecoration(
                              color: GreyColor,
                              boxShadow: [
                                BoxShadow(
                                  color: GreyColor.withOpacity(0.4),
                                  spreadRadius: 0.2,
                                  blurRadius: 1,
                                  offset: Offset(0, 2.5), // changes position of shadow
                                ),
                              ],
                            ),
                          )
                        ),
                        Row(
                          children: [
                            SizedBox(width: 28),
                            Text(
                              'Подписка до:\n15.12.2020',
                              style: RegularStyle.copyWith(fontSize: 14),
                            ),
                            Spacer(),
                            CupertinoButton(
                              padding: EdgeInsets.zero,
                                child: Container(
                                  width: 100,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: BlueColor
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Продлить',
                                      style: RegularStyle.copyWith(color: WhiteColor, fontSize: 14),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  print('Продлить!');
                                }
                            ),
                            SizedBox(width: 19)
                          ],
                        ),
                        SizedBox(height: 25)
                      ],
                    ),
                  ],
                ),
              ),
              InfoItemWidget('assets/icons/location.svg', 'Регион', onPressed: () {print('Регион!');}),
              InfoItemWidget('assets/icons/shop.svg', 'Адрес магазина', onPressed: () {print('Адрес!');}),
              InfoItemWidget('assets/icons/clock.svg', 'График работы', onPressed: () {print('График!');}),
              InfoItemWidget('assets/icons/history.svg', 'История заказов', onPressed: () {print('История!');}),
              InfoItemWidget('assets/icons/statistics.svg', 'Статистика', onPressed: () {print('Статы!');}),
              InfoItemWidget('assets/icons/document.svg', 'Регистрация магазина', onPressed: () {print('Рег!');}),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Дополнительно',
                    style: RegularStyle.copyWith(fontSize: 12, color: BlackGreyColor),
                  ),
                ),
              ),
              InfoItemWidget('assets/icons/box.svg', 'Работа с регионами', onPressed: () {print('Работа!');}),
              InfoItemWidget('assets/icons/support.svg', 'Техническая поддержка', onPressed: () {print('Техн.!');}),
              InfoItemWidget('assets/icons/exit.svg', 'Выход', onPressed: () {print('Выход!');}),
              Divider(color: GreyColor, height: 0),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:auto_mobile_app/logic/user/bloc/contacts_bloc.dart';
import 'package:auto_mobile_app/presentation/profile/widgets/info_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_mobile_app/core/consts/color_consts.dart';
import 'package:auto_mobile_app/core/consts/text_style_consts.dart';
import 'package:auto_mobile_app/core/routes/routes_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SellerProfileScreen extends StatefulWidget {
  const SellerProfileScreen({Key? key}) : super(key: key);

  @override
  _SellerProfileScreenState createState() => _SellerProfileScreenState();
}

class _SellerProfileScreenState extends State<SellerProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UsersBloc, UsersState>(
      listener: (context, state) {
        if (state is UsersLoading)
          print('Users loading');
        if (state is UsersSuccess)
          print('Users uploaded');
        if (state is UsersFailure)
          print('Users failure');
      },
  builder: (context, state) {
    return Scaffold(
      backgroundColor: AutoColors.whiteColor,
      appBar: AppBar(
        title: Text(
          'Профиль Продовца',
          style: AutoStyles.boldStyle.copyWith(fontSize: 20),
        ),
        backgroundColor: AutoColors.whiteColor,
        actions: [
          CupertinoButton(
            child: SvgPicture.asset('assets/icons/drawer.svg', color: AutoColors.blackColor,),
            onPressed: () {
              print('Drawer!');
            }
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),

        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: state is UsersSuccess ? Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AutoColors.whiteColor,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: AutoColors.greyColor.withOpacity(0.5),
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
                        SizedBox(height: 16),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/avatarS.png'),
                          backgroundColor: AutoColors.greyColor,
                          radius: 62.5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            state.user.name,
                            style: AutoStyles.boldStyle.copyWith(fontSize: 20),
                          ),
                        ),
                        Text(
                          state.user.phone,
                          style: AutoStyles.mediumStyle.copyWith(color: AutoColors.blackGreyColor),
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
                              style: AutoStyles.regularStyle.copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            SizedBox(width: 28),
                            Text(
                              'Баланс:',
                              style: AutoStyles.regularStyle.copyWith(fontSize: 14),
                            ),
                            SizedBox(width: 7),
                            Text(
                              '800',
                              style: AutoStyles.boldStyle
                            ),
                            Spacer(),
                            CupertinoButton(
                              padding: EdgeInsets.zero,
                              child: Container(
                                width: 100,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: AutoColors.greenColor
                                ),
                                child: Center(
                                  child: Text(
                                    'Пополнить',
                                    style: AutoStyles.regularStyle.copyWith(color: AutoColors.whiteColor, fontSize: 14),
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
                              color: AutoColors.greyColor,
                              boxShadow: [
                                BoxShadow(
                                  color: AutoColors.greyColor.withOpacity(0.4),
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
                              style: AutoStyles.regularStyle.copyWith(fontSize: 14),
                            ),
                            Spacer(),
                            CupertinoButton(
                              padding: EdgeInsets.zero,
                                child: Container(
                                  width: 100,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: AutoColors.blueColor
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Продлить',
                                      style: AutoStyles.regularStyle.copyWith(color: AutoColors.whiteColor, fontSize: 14),
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
              SizedBox(height: 16),
              InfoItemWidget('assets/icons/location.svg', 'Регион',
                onPressed: () {print('Регион!');}, subtitle: 'Алматы'),
              InfoItemWidget('assets/icons/shop.svg', 'Адрес магазина', onPressed: () {print('Адрес!');},
                subtitle: '${state.user.address.city}, ${state.user.address.suite}'),
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
                    style: AutoStyles.regularStyle.copyWith(fontSize: 12, color: AutoColors.blackGreyColor),
                  ),
                ),
              ),
              InfoItemWidget('assets/icons/box.svg', 'Работа с регионами', onPressed: () {print('Работа!');}),
              InfoItemWidget('assets/icons/support.svg', 'Техническая поддержка', onPressed: () {print('Техн.!');}),
              InfoItemWidget('assets/icons/exit.svg', 'Выход', onPressed: () {print('Выход!');
                Navigator.pushReplacementNamed(context, AuthRoute);}),
              Divider(color: AutoColors.greyColor, height: 0),
              SizedBox(height: 32),
              Container(
                height: 192,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AutoColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, -2), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(33, 16, 33, 25),
                  child: Column(
                    children: [
                      Text(
                          'Изменить Режим',
                          style: AutoStyles.regularStyle
                      ),
                      SizedBox(height: 16),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: AutoColors.orangeColor,
                              width: 2
                            )
                          ),
                          child: Center(
                            child: Text(
                              'Стать покупателем',
                              style: AutoStyles.boldStyle.copyWith(color: AutoColors.orangeColor),
                            ),
                          ),
                        ),
                        onPressed: () {
                          print('Стать покупателем!');
                        },
                      ),
                      SizedBox(height: 16),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color: AutoColors.redColor,
                                  width: 2
                              )
                          ),
                          child: Center(
                            child: Text(
                              'Стать курьером',
                              style: AutoStyles.boldStyle.copyWith(color: AutoColors.redColor),
                            ),
                          ),
                        ),
                        onPressed: () {
                          print('Стать курьером!');
                        },
                      ),
                    ]
                  ),
                ),
              )
            ],
          ) : state is UsersLoading
              ? Center(child: CupertinoActivityIndicator())
              : state is UsersFailure
              ? Center(child: Text(state.message))
              : Offstage(),
        ),
      ),
    );
  },
);
  }
}

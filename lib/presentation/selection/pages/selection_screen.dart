import 'package:flutter/cupertino.dart';
import 'package:auto_mobile_app/core/consts/color_consts.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: WhiteColor,
      child: Center(child: Text('SelectionScreen')),
    );
  }
}

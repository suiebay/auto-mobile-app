import 'package:flutter/cupertino.dart';
import 'package:auto_mobile_app/core/consts/color_consts.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  _RequestScreenState createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AutoColors.whiteColor,
      child: Center(child: Text('RequestScreen')),
    );
  }
}

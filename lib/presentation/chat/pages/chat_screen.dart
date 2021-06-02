import 'package:flutter/cupertino.dart';
import 'package:auto_mobile_app/core/consts/color_consts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: WhiteColor,
      child: Center(child: Text('ChatScreen')),
    );
  }
}

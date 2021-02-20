import 'package:flutter/material.dart';
import '../../constants/route_path.dart';
import '../../models/msg_item.dart';
import '../../widgets/msg_list.dart';

class MsgWidget extends StatefulWidget {
  @override
  _MsgState createState() => _MsgState();
}

class _MsgState extends State<MsgWidget> {
  List<MsgItem> items = [];

  @override
  void initState() {
    super.initState();
    updateMsgItems();
  }

  @override
  Widget build(BuildContext context) {
    return MsgListWidget(
        items: items,
        onTapMsg: (msg) {
          Navigator.pushNamed(context, RoutePath.booksPage);
        }
    );
  }

  void updateMsgItems() async {
    await Future.delayed(Duration(milliseconds: 150));
    setState(() {
      var now = DateTime.now().millisecondsSinceEpoch;
      this.items = [
        for (var i = 0; i < 60; i++) MsgItem(
          thumbnailUrl: i % 2 == 1 ? 'https://flutter.cn/favicon.ico' : 'https://flutter.cn/images/favicon.png',
          title: 'Title A-${i + 1}',
          content: 'Text A-${i + 1}, 123, 456, abc, ABC',
          timestamp: now - i * (Duration.millisecondsPerHour + 3 * Duration.millisecondsPerMinute),
        ),
      ];
    });
  }
}

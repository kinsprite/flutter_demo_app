import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/msg_item.dart';

typedef MsgTapCallback = void Function(MsgItem msg);

class MsgListWidget extends StatelessWidget {
  final List<MsgItem> items;
  final MsgTapCallback onTapMsg;

  const MsgListWidget({this.items, this.onTapMsg});

  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat('HH:mm');
    return ListView.builder(
      // padding: EdgeInsets.all(16.0),
      itemCount: items.length,
      itemBuilder: (context, i) {
        var msg = items[i];
        return ListTile(
          leading: Image.network(msg.thumbnailUrl),
          title: Text(msg.title),
          subtitle: Text(msg.content),
          trailing: Text(formatter.format(DateTime.fromMillisecondsSinceEpoch(msg.timestamp))),
          onTap: () {
            onTapMsg?.call(msg);
          },
        );
      },
    );
  }
}

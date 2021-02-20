import 'package:json_annotation/json_annotation.dart';

part 'msg_item.g.dart';

@JsonSerializable()
class MsgItem {
  String thumbnailUrl;
  String title;
  String content;
  // milliseconds since the "Unix epoch"
  int timestamp;

  MsgItem({this.thumbnailUrl, this.title, this.content, this.timestamp});

  factory MsgItem.fromJson(Map<String, dynamic> json) => _$MsgItemFromJson(json);

  Map<String, dynamic> toJson() => _$MsgItemToJson(this);
}

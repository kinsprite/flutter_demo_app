// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msg_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsgItem _$MsgItemFromJson(Map<String, dynamic> json) {
  return MsgItem(
    thumbnailUrl: json['thumbnailUrl'] as String,
    title: json['title'] as String,
    content: json['content'] as String,
  );
}

Map<String, dynamic> _$MsgItemToJson(MsgItem instance) => <String, dynamic>{
      'thumbnailUrl': instance.thumbnailUrl,
      'title': instance.title,
      'content': instance.content,
    };

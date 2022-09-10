import 'package:flutter/material.dart';

enum ChatMessageType { text, audio, image, video }

enum MessageStatus { not_sent, not_view, viewd }

class MessageModel {
  final String? text;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;

  final bool isSender;
  MessageModel({
    this.text,
    required this.messageType,
    required this.messageStatus,
    required this.isSender,
  });
}

List<MessageModel> demoChatMessage = [
  MessageModel(
      text:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewd,
      isSender: false),
  MessageModel(
      text:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewd,
      isSender: true),
  MessageModel(
      text:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewd,
      isSender: false),
  MessageModel(
      text:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewd,
      isSender: true),
  MessageModel(
      text:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewd,
      isSender: false),
  MessageModel(
      text:
          "Hi Limon,Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewd,
      isSender: true),
  MessageModel(
      text:
          "Hi palash Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewd,
      isSender: false),
  MessageModel(
      text:
          "Hi Sajal Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewd,
      isSender: true)
];

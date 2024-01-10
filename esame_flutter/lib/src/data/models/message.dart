enum MessageTypes {
  ai,
  user,
}

class Message {
  Message({
    required this.type,
    required this.content,
  });
  final MessageTypes type;
  final String content;

  @override
  String toString() => 'Message { type : $type, content : $content}';
}

class MessageAi extends Message {
  MessageAi({
    required String content,
  }) : super(type: MessageTypes.ai, content: content);
  static MessageAi fromJson(Map<String, dynamic> json) {
    return MessageAi(content: json['content']);
  }
}

class MessageUSer extends Message {
  MessageUSer({
    required String content,
  }) : super(type: MessageTypes.user, content: content);
  
}



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

  static Message fromJson(Map<String, dynamic> json) {
    return json['from'] == MessageTypes.user.name
        ? MessageUser.fromJson(json)
        : MessageAi.fromJson(json);
  }

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

class MessageUser extends Message {
  MessageUser({
    required String content,
  }) : super(type: MessageTypes.user, content: content);
  static MessageUser fromJson(Map<String, dynamic> json) {
    return MessageUser(content: json['content']);
  }
}
void main() {
  final json = [
    {
      'type': 'user',
      'message': 'ciao',
    },
    {
      'type': 'assistant',
      'message': 'ciao a te',
    }
  ];
  final messages = json
      .map(
        (e) => Message.fromJson(e),
      )
      .toList();
}
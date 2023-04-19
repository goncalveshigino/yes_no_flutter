import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message_entities.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';

class MyMessageBubble extends StatelessWidget {
  MyMessageBubble({
    super.key,
    required this.message,
  });

  final chatProvider = ChatProvider();

  final MessageEntity message;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message.text!,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}

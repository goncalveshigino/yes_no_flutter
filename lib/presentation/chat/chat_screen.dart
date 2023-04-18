

import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Meu Amor'),
          leading: const Padding(
            padding:  EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://static.vecteezy.com/ti/fotos-gratis/t2/4834925-grupo-multirracial-de-jovens-tirando-selfie-foto.jpg'),
            ),
          ),
        ),
        body:  Center(
          child: FilledButton(onPressed: (){}, child: const Text('Click me')),
        ),
      );
  }
}
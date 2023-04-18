

import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message_entities.dart';

class ChatProvider extends ChangeNotifier {

  List<MessageEntitie> messageList = [
    MessageEntitie(text: 'Ola Amor', fromWho: FromWho.me),
    MessageEntitie(text: 'Estas em casa?', fromWho: FromWho.me)
  ];


  Future<void> sendMessage( String text ) async {
    // TODO: implementar metodo
  }

}
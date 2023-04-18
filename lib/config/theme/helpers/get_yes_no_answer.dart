import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message_entities.dart';
import 'package:yes_no_app/infrastructure/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<MessageEntitie> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return MessageEntitie(
      text: yesNoModel.answer,
      fromWho: FromWho.hers,
      imageUrl: yesNoModel.image,
    );
  }
}

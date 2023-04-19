import 'package:yes_no_app/domain/entities/message_entities.dart';

class YesNoModel {
  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  final String answer;
  final bool forced;
  final String image;

  factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  MessageEntity toMessaEntity() => MessageEntity(
        text: answer == 'yes' ? 'Sim' : 'Nao',
        fromWho: FromWho.hers,
        imageUrl: image
      );
}

enum FromWho { me, hers }

class MessageEntitie {
  final String? text;
  final String? imageUrl;
  final FromWho fromWho;



   MessageEntitie({
      required this.text,
      this.imageUrl, 
      required this.fromWho,
   });
}

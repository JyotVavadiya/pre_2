class Quotes_Model {
  int? id;
  String? quote;


  Quotes_Model({
     this.id,
    required this.quote,

  });

  factory Quotes_Model.fromMap(Map<String, dynamic> data) {
    return Quotes_Model(
      id: data['id'],
      quote: data['quote'],


    );
  }
}

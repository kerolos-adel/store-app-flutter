class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final String categoty;

  final RatingModel rating;

  ProductModel( {
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.categoty,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      image: jsonData['image'],
      rating: RatingModel.fromJson(jsonData['rating']),
      categoty:jsonData['category'],
    );
  }
}


class RatingModel {
  final dynamic rate;
  final int count;


  RatingModel({required this.rate, required this.count,});

  factory RatingModel.fromJson(jsonData){
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}

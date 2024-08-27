class City {
  final String? name;
  final String? country;
  final double? rating;
  final int? price;
  final String? imageUrl;
  final List<Hotel>? hotels;

  City({
     this.name,
     this.country,
     this.rating,
     this.price,
     this.imageUrl,
     this.hotels,
  });

  factory City.fromJson(Map<String, dynamic> ?json) {
    if(json== null){
      return City();
    }
    return City(
      name: json['name'],
      country: json['capital'],
      rating: json['star'],
      price: json['ticket_price'],
      imageUrl: json['image'],
      hotels: List<Hotel>.from(
        json['hotels'].map((hotel) => Hotel.fromJson(hotel)),
      ),
    );
  }
}

class Hotel {
  final String? name;
  final int? price;
  final double? rating;
  final String? despos;
  final String? images;

  Hotel({
     this.name,
     this.price,
     this.rating,
     this.despos,
     this.images
  });

  factory Hotel.fromJson(Map<String, dynamic>? json) {
    if(json == null){
      return Hotel();
    }
    return Hotel(
      name: json['name'],
      price: json['price'],
      rating: json['satr'],
      despos: json['description'],
      images: json['image'],
    );
  }
}

class Artist {
  final String name;
  final String imageUrl;

  Artist({required this.name, required this.imageUrl});

  factory Artist.fromJson(Map<String, dynamic> json) {
    return Artist(
      name: json['author'],
      imageUrl: json['download_url'],
    );
  }
}

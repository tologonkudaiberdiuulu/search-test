class BookModel {
  final int id;
  final String name;
  final String author;
  final String imageUrl;
  final String description;

  const BookModel({
    required this.id,
    required this.name,
    required this.author,
    required this.imageUrl,
    required this.description,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    final model = BookModel(
      id: json['id'],
      name: json['name'],
      author: json['author'],
      imageUrl: json['imageUrl'],
      description: json['description'],
    );

    return model;
  }

  Map<String, dynamic> toJson() {
    final json = {
      'id': id,
      'name': name,
      'author': author,
      'imageUrl': imageUrl,
      'description': description,
    };

    return json;
  }
}

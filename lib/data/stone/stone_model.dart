class Stone {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final String addedDate;

  Stone({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.addedDate,
  });

  factory Stone.fromJson(Map<String, dynamic> json) {
    return Stone(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      addedDate: json['addedDate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'addedDate': addedDate,
    };
  }
}

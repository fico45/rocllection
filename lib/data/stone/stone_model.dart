class Stone {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final String addedDate;
  final String color;

  Stone({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.addedDate,
    required this.color,
  });

  factory Stone.fromJson(Map<String, dynamic> json) {
    return Stone(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      addedDate: json['addedDate'],
      color: json['color'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'addedDate': addedDate,
      'color': color,
    };
  }
}

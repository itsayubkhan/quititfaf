class Achievement {
  final int id;
  final String title;
  final String description;
  final String imageUrl;

  Achievement({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  // Factory method to create an Achievement from JSON
  factory Achievement.fromJson(Map<String, dynamic> json) {
    return Achievement(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      imageUrl: json['image'],
    );
  }

  // Method to convert an Achievement to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'image': imageUrl,
    };
  }
}
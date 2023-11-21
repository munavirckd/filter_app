class Taxonomy {
  int id;
  String guid;
  String slug;
  String name;
  bool isSelected;

  Taxonomy({
    required this.id,
    required this.guid,
    required this.slug,
    required this.name,
    this.isSelected = false,
  });

  factory Taxonomy.fromJson(Map<String, dynamic> json) {
    return Taxonomy(
      id: json['id'] as int,
      guid: json['Guid'] as String,
      slug: json['slug'] as String,
      name: json['name'] as String,
    );
  }
}

import 'package:filter_application/taxonomy.dart';

class Data {
  String name;
  String slug;
  List<Taxonomy> taxonomies;
  bool isExpanded;

  Data({
    required this.name,
    required this.slug,
    required this.taxonomies,
    this.isExpanded = false,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    List<dynamic> taxonomiesJson = json['taxonomies'];
    List<Taxonomy> taxonomies =
        taxonomiesJson.map((taxonomy) => Taxonomy.fromJson(taxonomy)).toList();

    return Data(
      name: json['name'] as String,
      slug: json['slug'] as String,
      taxonomies: taxonomies,
    );
  }
}

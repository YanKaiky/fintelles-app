import 'dart:convert';

class DataModel {
  final String guid;
  final String category;
  final String label;
  final String icon;
  final String amount;

  DataModel({
    required this.guid,
    required this.category,
    required this.icon,
    required this.amount,
    required this.label,
  });

  DataModel copyWith({
    String? guid,
    String? category,
    String? label,
    String? icon,
    String? amount,
  }) {
    return DataModel(
      guid: guid ?? this.guid,
      category: category ?? this.category,
      icon: icon ?? this.icon,
      amount: amount ?? this.amount,
      label: label ?? this.label,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'guid': guid,
      'category': category,
      'icon': icon,
      'amount': amount,
      'label': label,
    };
  }

  factory DataModel.fromMap(Map<String, dynamic> json) {
    return DataModel(
      guid: json['guid'] ?? '',
      category: json['category'] ?? '',
      icon: json['icon'] ?? '',
      amount: json['amount'] ?? '',
      label: json['label'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DataModel.fromJson(String source) =>
      DataModel.fromMap(json.decode(source));
}

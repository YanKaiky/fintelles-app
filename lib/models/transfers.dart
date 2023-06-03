import 'dart:convert';

class TransfersModel {
  final String guid;
  final String avatar;
  final String label;
  final String amount;
  final String time;
  final String status;

  TransfersModel({
    required this.guid,
    required this.amount,
    required this.avatar,
    required this.label,
    required this.time,
    required this.status,
  });

  TransfersModel copyWith({
    String? guid,
    String? avatar,
    String? label,
    String? amount,
    String? time,
    String? status,
  }) {
    return TransfersModel(
      guid: guid ?? this.guid,
      amount: amount ?? this.amount,
      avatar: avatar ?? this.avatar,
      label: label ?? this.label,
      time: time ?? this.time,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'guid': guid,
      'amount': amount,
      'avatar': avatar,
      'label': label,
      'time': time,
      'status': status,
    };
  }

  factory TransfersModel.fromMap(Map<String, dynamic> json) {
    return TransfersModel(
      guid: json['guid'] ?? '',
      amount: json['amount'] ?? '',
      avatar: json['avatar'] ?? '',
      label: json['label'] ?? '',
      time: json['time'] ?? '',
      status: json['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TransfersModel.fromJson(String source) =>
      TransfersModel.fromMap(json.decode(source));
}

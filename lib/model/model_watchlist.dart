import 'dart:convert';

List<WatchList> watchListFromJson(String str) => List<WatchList>.from(json.decode(str).map((x) => WatchList.fromJson(x)));

String watchListToJson(List<WatchList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// Object untuk data dari json
class WatchList {
  WatchList({
    required this.pk,
    required this.fields,
  });

  int pk;
  FieldsData fields;

  factory WatchList.fromJson(Map<String, dynamic> json) => WatchList(
    pk: json["pk"],
    fields: FieldsData.fromJson(json["fields"]),
  );

  Map<String, dynamic> toJson() => {
    "pk": pk,
    "fields": fields.toJson(),
  };
}

// Object untuk data di dalam fields
class FieldsData {
  FieldsData ({
    required this.watched,
    required this.title,
    required this.rating,
    required this.releaseDate,
    required this.review,
  });

  bool watched;
  String title;
  double rating;
  String releaseDate;
  String review;

  factory FieldsData.fromJson(Map<String, dynamic> json) => FieldsData(
    watched: json["watched"],
    title: json["title"],
    rating: json["rating"],
    releaseDate: json["release_date"],
    review: json["review"],
  );

  Map<String, dynamic> toJson() => {
    "watched": watched,
    "title": title,
    "rating": rating,
    "release_date": releaseDate,
    "review": review,
  };
}

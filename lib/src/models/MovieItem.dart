import 'Results.dart';

class MovieItem {
  MovieItem({
      required this.page,
      required this.results,
      required this.totalPages,
      required this.totalResults,});

  MovieItem.fromJson(dynamic json) {
    page = json['page'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results.add(Results.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }
  int page=-1;
  List<Results> results =List.empty(growable: true);
  int totalPages = -1;
  int totalResults=-1;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = page;
    if (results != null) {
      map['results'] = results.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = totalPages;
    map['total_results'] = totalResults;
    return map;
  }

}

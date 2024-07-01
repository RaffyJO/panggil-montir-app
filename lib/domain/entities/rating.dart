import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating.freezed.dart';
part 'rating.g.dart';

@freezed
class Rating with _$Rating {
  const factory Rating({
    int? id,
    int? rating,
    String? comment,
    bool? isDone,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        id: json['id'],
        rating: json['rating'],
        comment: json['comment'],
        isDone: json['is_done'],
      );
}

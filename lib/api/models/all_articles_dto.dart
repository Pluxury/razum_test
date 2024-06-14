import 'package:json_annotation/json_annotation.dart';
import 'package:razum_test/api/models/article_dto.dart';

part 'all_articles_dto.g.dart';

@JsonSerializable()
class AllArticlesDto {
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'totalResults')
  int? totalResults;
  @JsonKey(name: 'articles')
  List<ArticleDto>? articles;

  @JsonKey(name: 'code')
  String? code;
  @JsonKey(name: 'message')
  String? message;

  AllArticlesDto({required this.status});

  factory AllArticlesDto.fromJson(Map<String, dynamic> json) => _$AllArticlesDtoFromJson(json);
  Map<String, dynamic> toJson() => _$AllArticlesDtoToJson(this);
}

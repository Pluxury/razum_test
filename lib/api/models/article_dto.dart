import 'package:json_annotation/json_annotation.dart';

part 'article_dto.g.dart';

@JsonSerializable()
class ArticleDto {
  @JsonKey(name: 'author')
  final String? author;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'urlToImage')
  final String? urlToImage;
  @JsonKey(name: 'publishedAt')
  final DateTime? publishedAt;
  @JsonKey(name: 'content')
  final String? content;

  ArticleDto({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory ArticleDto.fromJson(Map<String, dynamic> json) => _$ArticleDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleDtoToJson(this);
}

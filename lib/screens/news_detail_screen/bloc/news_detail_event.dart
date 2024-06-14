part of 'news_detail_bloc.dart';

@immutable
sealed class NewsDetailEvent {}

final class NewsDetailStarted extends NewsDetailEvent {}

final class NewsDetailSourceTapped extends NewsDetailEvent {
  final String url;

  NewsDetailSourceTapped({required this.url});
}

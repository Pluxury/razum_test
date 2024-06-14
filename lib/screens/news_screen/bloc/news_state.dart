part of 'news_bloc.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}

final class NewsLoading extends NewsState {}

final class NewsFetchingSuccess extends NewsState {
  final List<ArticleModel> articles;

  NewsFetchingSuccess({required this.articles});
}

final class NewsFetchingError extends NewsState {
  final String errorMessage;

  NewsFetchingError({required this.errorMessage});
}

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:razum_test/core/dependency/dependency.dart';
import 'package:razum_test/domain/entities/article_model.dart';
import 'package:razum_test/domain/repository/news_repository.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  late final _newsRepository = Dependency.resolve<INewsRepository>();

  NewsBloc() : super(NewsInitial()) {
    on<NewsStarted>(_onBuildingsStarted);

    add(NewsStarted());
  }

  Future<void> _onBuildingsStarted(NewsStarted event, Emitter<NewsState> emit) async {
    emit(NewsLoading());

    final result = await _newsRepository.getArticles('bitcoin');

    if (result.isSuccessful) {
      final articles = result.result ?? [];

      emit(NewsFetchingSuccess(articles: articles));
    } else {
      emit(NewsFetchingError());
    }
  }
}

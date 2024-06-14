import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

part 'news_detail_event.dart';
part 'news_detail_state.dart';

class NewsDetailBloc extends Bloc<NewsDetailEvent, NewsDetailState> {
  NewsDetailBloc() : super(NewsDetailInitial()) {
    on<NewsDetailSourceTapped>(_onNewsDetailSourceTapped);
  }

  FutureOr<void> _onNewsDetailSourceTapped(NewsDetailSourceTapped event, Emitter<NewsDetailState> emit) async {
    final url = event.url;

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }
}

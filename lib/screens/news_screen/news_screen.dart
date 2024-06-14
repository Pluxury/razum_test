import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:razum_test/screens/news_detail_screen/news_detail_screen.dart';

import 'bloc/news_bloc.dart';

part 'news_body.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => NewsBloc(),
        child: const _NewsBody(),
      ),
    );
  }
}

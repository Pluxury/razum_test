part of 'news_detail_screen.dart';

class _NewsDetailBody extends StatelessWidget {
  const _NewsDetailBody({
    required this.article,
  });

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsDetailBloc, NewsDetailState>(
      builder: (context, state) {
        return SafeArea(
          top: false,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 150.0,
                pinned: true,
                stretch: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: LayoutBuilder(
                    builder: (context, constraints) {
                      return Text(
                        article.author,
                        style: TextStyle(
                          color: constraints.maxHeight > 150 ? Colors.white : Colors.black,
                        ),
                      );
                    },
                  ),
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(article.urlToImage),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black87.withOpacity(0.6),
                            Colors.black87.withOpacity(0.2),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            article.content +
                                article.content +
                                article.content +
                                article.content +
                                article.content +
                                article.content,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Source: ',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: article.url,
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      context.read<NewsDetailBloc>().add(
                                            NewsDetailSourceTapped(url: article.url),
                                          );
                                    },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

part of 'buildings_screen.dart';

class _BuildingsBody extends StatefulWidget {
  const _BuildingsBody();

  @override
  State<_BuildingsBody> createState() => _BuildingsBodyState();
}

class _BuildingsBodyState extends State<_BuildingsBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BuildingsBloc, BuildingsState>(builder: (context, state) {
      if (state is BuildingsLoading) {
        return const Center(
          child: CircularProgressIndicator(
            color: Colors.blue,
          ),
        );
      }

      return const Placeholder();
    });
  }
}

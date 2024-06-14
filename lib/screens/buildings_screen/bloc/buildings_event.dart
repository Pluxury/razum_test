part of 'buildings_bloc.dart';

@immutable
sealed class BuildingsEvent {}

final class BuildingsStarted extends BuildingsEvent {}

final class BuildingsSearched extends BuildingsEvent {
  final String text;

  BuildingsSearched({required this.text});
}

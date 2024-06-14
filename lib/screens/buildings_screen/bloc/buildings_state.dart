part of 'buildings_bloc.dart';

@immutable
sealed class BuildingsState {}

final class BuildingsInitial extends BuildingsState {}

final class BuildingsLoading extends BuildingsState {}

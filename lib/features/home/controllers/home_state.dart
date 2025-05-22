abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final String randomString;

  HomeLoaded(this.randomString);
}

class HomeError extends HomeState {
  final String message;

  HomeError(this.message);
}

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:inventi_exam/data/repositories/home_repository.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository repository;

  HomeCubit({required this.repository}) : super(HomeInitial());

  Future<void> getRandomString() async {
    emit(HomeLoading());
    try {
      final result = await repository.getRandomString();
      emit(HomeLoaded(result.randomString));
    } catch (e) {
      emit(HomeError('Failed to fetch random string'));
    }
  }
}

import 'package:inventi_exam/features/home/models/random_string_model.dart';

import '../services/home_service.dart';

class HomeRepository {
  final HomeService service;

  HomeRepository({required this.service});

  Future<RandomString> getRandomString() {
    return service.fetchRandomString();
  }
}

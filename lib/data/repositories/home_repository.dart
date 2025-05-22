import 'package:inventi_exam/data/services/home_service.dart';
import 'package:inventi_exam/features/home/models/random_string_model.dart';

class HomeRepository {
  final HomeService service;

  HomeRepository({required this.service});

  Future<RandomString> getRandomString() {
    return service.fetchRandomString();
  }
}

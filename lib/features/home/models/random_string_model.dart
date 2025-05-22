class RandomString {
  final String randomString;

  RandomString({required this.randomString});

  factory RandomString.fromJson(Map<String, dynamic> json) {
    return RandomString(randomString: json['randomString']);
  }
}

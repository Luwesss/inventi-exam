/// Custom exception class to handle various format-related errors.
class InventiExamFormatException implements Exception {
  final String message;

  const InventiExamFormatException(
      [this.message =
          'An unexpected format error occurred. Please check your input.']);

  factory InventiExamFormatException.fromMessage(String message) {
    return InventiExamFormatException(message);
  }

  String get formattedMessage => message;

  factory InventiExamFormatException.fromCode(String code) {
    switch (code) {
      case 'invalid-email-format':
        return const InventiExamFormatException(
            'The email address format is invalid. Please enter a valid email.');
      case 'invalid-phone-number-format':
        return const InventiExamFormatException(
            'The provided phone number format is invalid. Please enter a valid number.');
      case 'invalid-date-format':
        return const InventiExamFormatException(
            'The date format is invalid. Please enter a valid date.');
      case 'invalid-url-format':
        return const InventiExamFormatException(
            'The URL format is invalid. Please enter a valid URL.');
      case 'invalid-credit-card-format':
        return const InventiExamFormatException(
            'The credit card format is invalid. Please enter a valid credit card number.');
      case 'invalid-numeric-format':
        return const InventiExamFormatException(
            'The input should be a valid numeric format.');
      default:
        return const InventiExamFormatException();
    }
  }
}

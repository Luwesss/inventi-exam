/// Exception class for handling various errors.
class InventiExamExceptions implements Exception {
  final String message;

  const InventiExamExceptions(
      [this.message = 'An unexpected error occurred. Please try again.']);
}

class TFormatException implements Exception {
  //the error code associated with the exception
  final String message;
  //constructor that takes an error code
  const TFormatException(
      [this.message =
          'An unexpected format error occured.Please check your input..']);
//Create a format exception from a specific error message.
  factory TFormatException.fromMessage(String message) {
    return TFormatException(message);
  }
  //Get the corresponding error message
  String get formattedMessage => message;

  //create a format exception from a specific error code
  factory TFormatException.fromcode(String code) {
    switch (code) {
      case 'invalid-email-format':
        return const TFormatException(
            'The email address format is invalid.Please enter a valid email');
      case 'invalid-phone-no-format':
        return const TFormatException(
            'The Provided phone number format is invalid. Please enter a valid number.');
      case 'invalid-date-format':
        return const TFormatException(
            'The date format is invalid. Please enter a valid date..');
      case 'invalid-url-format':
        return const TFormatException(
            'The URl format is invalid..Please enter a valid URL..');
      case 'invalid-credit-card-format':
        return const TFormatException(
            'The credit card format is invalid.Please enter a valid creditcard number');
      case 'invalid-numeric-format':
        return const TFormatException(
            'The input should be a valid numeric format..');
      //add more cases as needed
      default:
        return const TFormatException('unexpected error occured');
    }
  }
}

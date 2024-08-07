class TFirebaseException implements Exception {
  //the error code associated with the exception
  final String code;
  //constructor that takes an error code
  TFirebaseException(this.code);

  //Get the corrresponding error message based on the error code
  String get message {
    switch (code) {
      case 'unknown':
        return 'An unknown Firebase error occured. Please try again.';
      case 'invalid-custom-taken':
        return 'The custom taken format is incorrect.Please check your custom taken.';
      case 'custom-taken-mismatch':
        return 'The custom taken corresponds to a different audience';
      case 'user-disabled':
        return 'The user account has been disabled';
      case 'user-not-found':
        return 'No user found for the given email or UID';
      case 'invalid-email':
        return 'The email address provided is invalid.Please enter a valid email';
      case 'email-already-in-use':
        return 'The email address is already registered.Please enter a valid email';
      case 'wrong-password':
        return 'Incorrect password.please check your password and try again';
      case 'weak-password':
        return 'The password is too weak.Please choose a stronger password';
      case 'provider-already-linked':
        return 'The account is already linked with another provider';
      case 'operation-not-allowed':
        return 'This operation is not allowed.Contact support for assistance';
      case 'captcha-check-failed':
        return 'The reCAPCHA response is invalid. Please try again';
      default:
        return 'unexpected error occured';
    }
  }
}

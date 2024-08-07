class TPlatformException implements Exception {
  final String code;
  TPlatformException(this.code);
  String get message {
    switch (code) {
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'Invalid login credentials. Please double-check your information.';
      case 'too-many-requests':
        return 'Too many requests.Please try again later.';
      case 'invalid-argument':
        return 'Invalid argument provided to the authentication method.';
      case 'invalid-password':
        return 'Incorrect password. Please try again';
      case 'invalid-phone-number':
        return 'The provided phone number is invalid';
      case 'operation not allowed':
        return 'The signin provider is disabled for your firebase project';
      case 'session-cookie-expired':
        return 'The firebase session cookie has expired.Please signin again';
      case 'uid-already-exists':
        return 'The provided userID is already in use by another user';
      case 'sign-in-failed':
        return 'Sign-in failed. Please try again.';
      case 'network-request-failed':
        return 'Network request failed.Please check your internet connection.';
      default:
        return 'An unexpected Firebase error occured.Please try again..';
    }
  }
}

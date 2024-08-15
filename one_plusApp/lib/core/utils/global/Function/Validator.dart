class Validator {
  static String? validateName(String? value, String validationError) {
    if (value == null || value.isEmpty) {
      return validationError;
    }
    return null;
  }

  static String? validateEmail(String? value, String validationError, String formatError) {
    if (value == null || value.isEmpty) {
      return validationError;
    }
    if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+").hasMatch(value)) {
      return formatError;
    }
    return null;
  }

  static String? validatePassword(String? value, String validationError) {
    if (value == null || value.isEmpty) {
      return validationError;
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String confirmPassword, String validationError, String mismatchError) {
    if (value == null || value.isEmpty) {
      return validationError;
    }
    if (value != confirmPassword) {
      return mismatchError;
    }
    return null;
  }
}

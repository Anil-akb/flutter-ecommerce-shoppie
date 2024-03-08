class SValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    // Regular expression for validating email
    final emailRegex = RegExp(r'^[\w-\. ]+@([\w-]+\. )+[\w-]{2,4}$ ');

    if (!emailRegex.hasMatch(value)) {
      return "Invalid email";
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }

    // check password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }
    // Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }

    // Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    }
    // Check for special characters
    if (!value.contains(RegExp(r' [ !@#$%^&*( ), .?":{}]<>]'))) {
      return 'Password must contain at least one special character.';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number is required";
    }
    // Regular expression for validating phone number
    final phoneRegex =
        RegExp(r'^[+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$');

    if (!phoneRegex.hasMatch(value)) {
      return "Invalid phone number";
    }

    return null;
  }
}

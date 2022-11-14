mixin ValidationsMixin {
  static String? isEmailValid(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }
    if (!email.contains('@')) {
      return 'Email is invalid';
    }
    return null;
  }

  static String? isPasswordValid(String? password) {
    if (password == null || password.length <= 8) {
      return 'Password must contain at least 8 characters.';
    }

    return null;
  }

  static String? iscPasswordValid(String? password, String? cPass) {
    if (password != cPass) {
      return 'Invalid Confirmed Password';
    }

    return null;
  }

  static String? isNotEmpty(String? value, {String? field}) {
    if (value == null || value.isEmpty) {
      return '$field is required';
    }
    return null;
  }

  static String? isNameValid(String? name) {
    if (name == null || name.isEmpty) {
      return 'Name is required';
    }
    return null;
  }

  static String? isPhoneValid(String? phone) {
    if (phone == null || phone.isEmpty || phone.length < 11) {
      return 'Phone Number is required';
    }
    return null;
  }

  static String? isPinValid(String? pin) {
    if (pin == null || pin.isEmpty) {
      return 'Pin is required';
    }
    return null;
  }

  static String? isBirthDateValid(DateTime? birthDate) {
    if (birthDate == null) {
      return 'Birth Date is required';
    } else if (birthDate.year > DateTime.now().year - 15) {
      return 'You must be at least 16 years old';
    }
    return null;
  }
}

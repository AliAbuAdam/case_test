abstract class FormUtils {
  static String? nameValidator(String? value) {
    if (value?.isEmpty == true || value == null) {
      return 'Обязательное поле';
    }
    if (value.length < 6 || value.length > 12) {
      return 'от 6 до 12 символов';
    }

    return null;
  }

  static String? emailValidator(String? value) {
    if (value?.isEmpty == true || value == null) {
      return 'Обязательное поле';
    }
    if ((value.contains('@') == false) || (value.contains('.') == false)) {
      return 'символы @ и . обязательны';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value?.isEmpty == true || value == null) {
      return 'Обязательное поле';
    }
    if (value.length < 6 || value.length > 32) {
      return 'от 6 до 32 символов';
    }
    return null;
  }
}

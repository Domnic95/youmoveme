bool emailValidator(String s) {
  return RegExp("[a-zA-z]+@[a-z]+.[a-z]+").hasMatch(s);
}

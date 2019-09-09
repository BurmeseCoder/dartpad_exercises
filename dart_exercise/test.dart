void main() {
  try {
    final str = stringify(2, 5); 

    if (str == '2 5') {
      _result(true);
    } else if (str == '25') {
      _result(false, ['Test failed. It looks like you forgot the space!']);
    } else if (str == null) {
      _result(false, ['Test failed. Did you forget to return a value?']);
    } else {
      _result(false, ['That\'s not quite right. Keep trying!']);
    }
  } catch (e) {
    _result(false, ['Tried calling stringify(2, 5), but received an exception: ${e.runtimeType}']);
  }
}
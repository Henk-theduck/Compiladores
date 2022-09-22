late int _state;

bool scannerA(String content) {
  _state = 0;
  for (int i = 0; i < content.length; i++) _nextStateA(content[i]);
  return _state == 4;
}

_nextStateA(String char) {
  switch (_state) {
    // estado 0
    case 0:
      if (char == 'a')
        _state = 1;
      else
        _state = 2;
      break;
    // estado 1
    case 1:
      if (char == 'a')
        _state = 1;
      else
        _state = 2;
      break;
    // estado 2
    case 2:
      if (char == 'a')
        _state = 3;
      else
        _state = 2;
      break;
    // estado 3
    case 3:
      if (char == 'a')
        _state = 1;
      else
        _state = 4;
      break;
    // estado 4
    case 4:
      if (char == 'a')
        _state = 3;
      else
        _state = 2;
      break;
  }
}

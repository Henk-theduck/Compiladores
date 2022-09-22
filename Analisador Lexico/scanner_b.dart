late int _state;

bool scannerB(String content) {
  _state = 0;
  for (int i = 0; i < content.length; i++) _nextStateB(content[i]);
  return _state == 5;
}

_nextStateB(String char) {
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
        _state = 4;
      else
        _state = 2;
      break;
    // estado 4
    case 4:
      if (char == 'a')
        _state = 1;
      else
        _state = 5;
      break;
    // estado 5
    case 5:
      if (char == 'a')
        _state = 1;
      else
        _state = 2;
      break;
  }
}

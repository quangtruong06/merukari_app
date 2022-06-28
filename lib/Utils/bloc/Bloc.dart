import 'dart:async';

StreamController _showHeaderController = StreamController<bool>.broadcast();
Stream get showHeaderStream => _showHeaderController.stream;
void setShowHeader(bool value){
  _showHeaderController.sink.add(value);
}
import 'package:flutter/material.dart';

// Create a ChangeNotifier class to manage the state
class DragDropModel extends ChangeNotifier {
  Color _targetColor = Colors.grey;
  Color get targetColor => _targetColor;

  void updateTargetColor(Color color) {
    _targetColor = color;
    notifyListeners();
  }
}

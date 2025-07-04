
import 'package:flutter_riverpod/flutter_riverpod.dart';

final todoListProvider =
StateNotifierProvider<TodoListNotifier, List<String>>((ref) {
  return TodoListNotifier();
});

class TodoListNotifier extends StateNotifier<List<String>> {
  TodoListNotifier() : super([]);

  void add(String item) {
    if (item.trim().isNotEmpty) {
      state = [...state, item.trim()];
    }
  }

  void remove(int index) {
    final updatedList = [...state]..removeAt(index);
    state = updatedList;
  }
}

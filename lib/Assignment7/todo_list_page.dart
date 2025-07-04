
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'todo_provider.dart';
import 'package:assignments/Assignment7/todo_item.dart'; 

class TodoListPage extends ConsumerStatefulWidget {
  const TodoListPage({super.key});

  @override
  ConsumerState<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends ConsumerState<TodoListPage> {
  final TextEditingController _controller = TextEditingController();

  void _addTodoItem() {
    ref.read(todoListProvider.notifier).add(_controller.text);
    _controller.clear();
  }

  void _removeTodoItem(int index) {
    ref.read(todoListProvider.notifier).remove(index);
  }

  @override
  Widget build(BuildContext context) {
    final todoItems = ref.watch(todoListProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('To-Do List'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.tealAccent,
              Colors.black,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              top: kToolbarHeight + 24, left: 16, right: 16, bottom: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        labelText: 'Enter a task',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: _addTodoItem,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.deepPurple,
                    ),
                    child: const Text('Add'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: todoItems.isEmpty
                    ? const Center(
                  child: Text(
                    'No tasks. Add one!',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                )
                    : ListView.builder(
                  itemCount: todoItems.length,
                  itemBuilder: (context, index) {
                    return TodoItem(
                      title: todoItems[index],
                      onDelete: () => _removeTodoItem(index),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

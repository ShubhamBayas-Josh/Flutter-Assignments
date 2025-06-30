import 'package:assignments/Asignment4/todo_item.dart';
import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final List<String> _todoItems = [];
  final TextEditingController _controller = TextEditingController();

  void _addTodoItem() {
    String newItem = _controller.text.trim();
    if (newItem.isNotEmpty) {
      setState(() {
        _todoItems.add(newItem);
      });
      _controller.clear();
    }
  }

  void _removeTodoItem(int index) {
    setState(() {
      _todoItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
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
                child: _todoItems.isEmpty
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
                  itemCount: _todoItems.length,
                  itemBuilder: (context, index) {
                    return TodoItem(
                      title: _todoItems[index],
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

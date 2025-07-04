
import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String title;
  final VoidCallback onDelete;

  const TodoItem({
    super.key,
    required this.title,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.9),
      child: ListTile(
        title: Text(title),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: onDelete,
        ),
      ),
    );
  }
}

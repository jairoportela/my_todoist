import 'package:flutter/material.dart';

class TodoItemCard extends StatefulWidget {
  @override
  _TodoItemCardState createState() => _TodoItemCardState();
}

class _TodoItemCardState extends State<TodoItemCard> {
  var _isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Theme.of(context).primaryColor,
      child: ListTile(
        leading: IconButton(
          onPressed: () {
            setState(() {
              _isCompleted = !_isCompleted;
            });
          },
          icon: Icon(
            _isCompleted ? Icons.circle : Icons.circle_outlined,
          ),
        ),
        title: Text(
          'Prueba',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';

// import '../providers/todo_item.dart';
// import '../widgets/todo_item_bottom_sheet.dart';

// class TodoItemShow extends StatelessWidget {
//   final String id;
//   final String todo;
//   final DateTime endTime;
//   final List<String> tags;

//   TodoItemShow({
//     this.id,
//     this.todo,
//     this.endTime,
//     this.tags,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Dismissible(
//         key: ValueKey(id),
//         direction: DismissDirection.horizontal,
//         onDismissed: (direction) {
//           if (direction == DismissDirection.endToStart) {
//             ScaffoldMessenger.of(context).hideCurrentSnackBar();
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 behavior: SnackBarBehavior.fixed,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(4)),
//                 content: Text('Completada.'),
//                 action: SnackBarAction(
//                   label: 'Deshacer',
//                   onPressed: () {
//                     Provider.of<TodoList>(context, listen: false).addTodoItem(
//                       todo,
//                       endTime,
//                       tags,
//                     );
//                   },
//                 ),
//               ),
//             );
//           }
//           Provider.of<TodoList>(context, listen: false).deleteItem(id);
//         },
//         secondaryBackground: Container(
//           child: Icon(
//             Icons.check,
//             color: Colors.white,
//             size: 40,
//           ),
//           color: Colors.green,
//           alignment: Alignment.centerRight,
//           padding: const EdgeInsets.all(20),
//         ),
//         background: Container(
//           child: Icon(
//             Icons.copy,
//             color: Colors.white,
//             size: 40,
//           ),
//           color: Colors.orange,
//           alignment: Alignment.centerLeft,
//           padding: const EdgeInsets.all(20),
//         ),
//         child: InkWell(
//           onTap: () => showModalBottomSheet(
//             shape:RoundedRectangleBorder(
//                   borderRadius:
//                       BorderRadius.vertical(top: Radius.circular(25.0))),
//             context: context,
//             builder: (ctx) => TodoItemBottomSheet(id),
//           ),
//           child: Container(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Container(
//                   width: double.infinity,
//                   child: Text(
//                     todo,
//                     style: Theme.of(context).textTheme.headline6,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(
//                       Icons.calendar_today_rounded,
//                       size: 15,
//                       color: Theme.of(context).accentColor,
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(3),
//                       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//                       //color: Colors.green.withOpacity(0.5),
//                       child: Text(DateFormat('d/MMM/yyyy').format(endTime)),
//                     ),
//                     // Expanded(
//                     //   child: LayoutBuilder(
//                     //       builder: (ctx, constrains) =>
//                     //           TagsShow(() {}, constrains, tags, false)),
//                     // ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

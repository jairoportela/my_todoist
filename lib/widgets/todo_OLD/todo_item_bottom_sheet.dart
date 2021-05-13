// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';

// import '../providers/todo_item.dart';
// import '../widgets/tags_show.dart';

// class TodoItemBottomSheet extends StatelessWidget {
//   final String id;

//   TodoItemBottomSheet(this.id);

//   @override
//   Widget build(BuildContext context) {
//     final todo = Provider.of<TodoList>(context, listen: false).findById(id);
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: Column(
//         children: [
//           Icon(
//             Icons.remove,
//             size: 35,
//           ),
//           Text(
//             todo.todo,
//             style: Theme.of(context).textTheme.headline6,
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Row(
//             children: [
//               InkWell(
//                 borderRadius: BorderRadius.circular(15),
//                 splashColor: Theme.of(context).accentColor,
//                 onTap: () {},
//                 child: Container(
//                   padding: EdgeInsets.all(3),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     border: Border.all(
//                         width: 1,
//                         color: Theme.of(context).textTheme.headline6.color),
//                   ),
//                   child: Row(
//                     children: [
//                       Icon(
//                         Icons.calendar_today_rounded,
//                         size: 15,
//                       ),
//                       Container(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                         child: Text(
//                           DateFormat('d/MMM/yyyy').format(todo.endTime),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 15),
//           Row(
//             children: [
//               Text('Tags: '),
//               Expanded(
//                 child: LayoutBuilder(
//                   builder: (ctx, constrains) =>
//                       TagsShow(() {}, constrains, todo.tags, false),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 2.0),
//             child: Divider(
//               thickness: 2,
//             ),
//           ),
//           InkWell(
//             onTap: () {},
//             child: Container(
//               padding: EdgeInsets.all(8),
//                 width: double.infinity,
//                 child: Text(
//                   '+ Añadir Subtarea',
//                   style: Theme.of(context).textTheme.bodyText1,
//                 )),
//           )
//         ],
//       ),
//     );
//   }
// }

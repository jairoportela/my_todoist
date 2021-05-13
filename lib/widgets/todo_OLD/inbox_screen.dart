// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'menu_bottom_sheet.dart';
// import '../../providers/todo_item.dart';
// import 'bottom_app_bar_show.dart';
// import 'todo_item_show.dart';
// import 'add_todo_bottom_sheet.dart';

// class InboxScreen extends StatefulWidget {
//   static const routeName='/inbox';
//   @override
//   _InboxScreenState createState() => _InboxScreenState();
// }

// class _InboxScreenState extends State<InboxScreen> {

//   @override
//   Widget build(BuildContext context) {
//     final todo = Provider.of<TodoList>(context);

//     return Scaffold(

//       // appBar: AppBar(title: Text('Prueba'),),
//       body: ListView.builder(
//         itemBuilder: (ctx, i) => TodoItemShow(
//           id: todo.filterInboxItems[i].id,
//           endTime: todo.filterInboxItems[i].endTime,
//           tags: todo.filterInboxItems[i].tags,
//           todo: todo.filterInboxItems[i].todo,
//         ),
//         itemCount: todo.filterInboxItems.length,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           showModalBottomSheet(
//               shape: RoundedRectangleBorder(
//                   borderRadius:
//                       BorderRadius.vertical(top: Radius.circular(25.0))),
//               //backgroundColor: Colors.black,
//               isScrollControlled: true,
//               context: context,
//               builder: (ctx) => AddTodoBottomSheet());
//         },
//         child: Icon(Icons.add),
//       ),
//       floatingActionButtonLocation:
//           FloatingActionButtonLocation.miniCenterDocked,
//       bottomNavigationBar: BottomAppBarShow(),
//       drawer: Drawer(child: MenuBottomSheet(),),
//     );
//   }
// }

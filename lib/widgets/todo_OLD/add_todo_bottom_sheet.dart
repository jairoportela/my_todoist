// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';

// import '../providers/todo_item.dart';
// import './tags_show.dart';

// class AddTodoBottomSheet extends StatefulWidget {
//   @override
//   _AddTodoBottomSheetState createState() => _AddTodoBottomSheetState();
// }

// class _AddTodoBottomSheetState extends State<AddTodoBottomSheet> {
//   final List<String> _tags = [];

//   var _newTodoController = TextEditingController();
//   DateTime _selectedTime;

//   void _editFormat(String value) {
//     var exp = RegExp(r'#[a-zA-Z]+\s');
//     if (value.contains(exp)) {
//       var tag = exp.firstMatch(value).group(0);
//       tag = tag.substring(1, tag.length - 1);

//       setState(() {
//         _tags.add(tag);
//         _newTodoController.text = value.replaceAll(exp, '');
//         _newTodoController.selection = TextSelection.fromPosition(
//             TextPosition(offset: _newTodoController.text.length));
//       });
//     }
//   }

//   void _deleteTag(int index) {
//     setState(() {
//       _tags.removeAt(index);
//     });
//   }

//   void _presentDataPicker(BuildContext context) {
//     showDatePicker(
//             context: context,
//             initialDate: DateTime.now(),
//             firstDate: DateTime.now(),
//             lastDate: DateTime(DateTime.now().year + 5))
//         .then((value) {
//       if (value == null) {
//         return;
//       }
//       setState(() {
//         _selectedTime = value;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 18),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           SizedBox(
//             height: 8.0,
//           ),
//           Padding(
//             padding: EdgeInsets.only(bottom: 20),
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText: 'Añade una tarea',
//                 focusedBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(
//                     width: 2,
//                     color: Theme.of(context).accentColor,
//                   ),
//                 ),
//               ),
//               onChanged: (value) {
//                 _editFormat(value);
//               },
//               autofocus: true,
//               controller: _newTodoController,
//             ),
//           ),
//           InkWell(
//             onTap: () => _presentDataPicker(context),
//             child: Row(children: [
//               Icon(Icons.calendar_today),
//               SizedBox(
//                 width: 8,
//               ),
//               Text(_selectedTime == null
//                   ? 'Fecha'
//                   : DateFormat('d/MMM/yyyy').format(_selectedTime))
//             ]),
//           ),
//           SizedBox(height: 10),
//           Row(
//             children: [
//               Text('Tags:'),
//               SizedBox(width: 8),
//               Expanded(
//                 child: LayoutBuilder(
//                   builder: (ctx, constrains) =>
//                       TagsShow(_deleteTag, constrains, _tags, true),
//                 ),
//               ),
//               Consumer<TodoList>(
//                 builder: (ctx, todo, child) {
//                   return IconButton(
//                       icon: Icon(
//                         Icons.send,
//                         size: 15,
//                       ),
//                       onPressed: () {
//                         todo.addTodoItem(
//                             _newTodoController.text, _selectedTime, _tags);
//                         Navigator.of(context).pop();
//                       });
//                 },
//               ),
//             ],
//           ),
//           SizedBox(height: 10)
//         ],
//       ),
//     );
//   }
// }

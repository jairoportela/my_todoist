// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../providers/folder.dart';

// class MenuBottomSheet extends StatefulWidget {
//   @override
//   _MenuBottomSheetState createState() => _MenuBottomSheetState();
// }

// class _MenuBottomSheetState extends State<MenuBottomSheet> {
//   int _selectedIndex;
//   @override
//   void initState() {
//     super.initState();
//     _selectedIndex =
//         Provider.of<Folders>(context, listen: false).currentFolderIndex;
//   }

//   void _changeFolder(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//     Provider.of<Folders>(context, listen: false).currentFolderIndex = index;
//     Navigator.of(context).pop();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final folders = Provider.of<Folders>(context, listen: false);

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         SizedBox(
//           height: 10,
//         ),
//         CircleAvatar(
//           backgroundColor: Colors.red,
//           radius: 40,
//         ),
//         SizedBox(height: 10),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             'Nombre',
//             textAlign: TextAlign.center,
//             style: Theme.of(context).textTheme.headline6,
//           ),
//         ),
//         ExpansionTile(
//           initiallyExpanded: true,
//           title: Text('Default Folders'),
//           children: [
//             for (var i = 0; i < 3; i++)
//               ListTile(
//                 dense: true,
//                 selectedTileColor: Colors.grey.shade200,
//                 onTap: () => _changeFolder(i),
//                 selected: i == _selectedIndex, //
//                 leading: Icon(
//                   folders.items[i].icon,
//                   //color: Theme.of(context).accentColor,
//                 ),
//                 title: Text(folders.items[i].title),
//               ),
//           ],
//         ),
//         ExpansionTile(
//           initiallyExpanded: _selectedIndex >= 3 ? true : false,
//           title: Text('Proyects'),
//           children: [
//             for (var j = 3; j < folders.listCount; j++)
//               ListTile(
//                 dense: true,
//                 selectedTileColor: Colors.grey.shade200,
//                 onTap: () => _changeFolder(j),
//                 selected: j == _selectedIndex, //
//                 leading: Icon(
//                   folders.items[j].icon,
//                   color: Theme.of(context).accentColor,
//                 ),
//                 title: Text(folders.items[j].title),
//               ),
//             TextButton.icon(
//                 onPressed: () {},
//                 icon: Icon(Icons.add),
//                 label: Text('Add Folder')),
//           ],
//         )
//       ],
//     );
//   }
// }

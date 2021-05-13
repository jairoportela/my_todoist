// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

// import '../providers/folder.dart';
// import '../widgets/menu_bottom_sheet.dart';
// import '../widgets/settings_bottom_sheet.dart';
// import '../widgets/waterfall_notched_rectangle.dart';

// class BottomAppBarShow extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final folders = Provider.of<Folders>(context);
//     return BottomAppBar(
//       shape: WaterfallNotchedRectangle(),
//       notchMargin: 6,

//       //shape: CircularNotchedRectangle(),

//       child: Container(
//         height: kToolbarHeight,
//         color: Colors.transparent,
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             InkWell(
//               borderRadius: BorderRadius.circular(16),
//               onTap: () {
//                 showMaterialModalBottomSheet(
//                     shape: RoundedRectangleBorder(
//                         borderRadius:
//                             BorderRadius.vertical(top: Radius.circular(25.0))),
//                     context: context,
//                     builder: (context) => SingleChildScrollView(
//                           controller: ModalScrollController.of(context),
//                           child: MenuBottomSheet(),
//                         ));
//               },
//               child: Row(
//                 children: [
//                   SizedBox(width: 16),
//                   Icon(Icons.arrow_drop_up),
//                   SizedBox(width: 8),
//                   Icon(
//                     folders.items[folders.currentFolderIndex].icon,
//                     size: 32,
//                   ),
//                   SizedBox(width: 10),
//                   Container(
//                     width: 60,
//                     child: Text(folders.items[folders.currentFolderIndex].title,
//                     // softWrap: true,
//                     overflow: TextOverflow.ellipsis,
//                         style: Theme.of(context).textTheme.bodyText2),
//                   )
//                 ],
//               ),
//             ),
//             IconButton(
//               icon: Icon(Icons.settings),
//               onPressed: () {
//                 showModalBottomSheet(
//                     isScrollControlled: true,
//                     context: context,
//                     builder: (ctx) => SettingsBottomSheet());
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

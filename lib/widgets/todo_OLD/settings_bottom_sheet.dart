// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../providers/configuration.dart';

// extension ThemeModeExtension on ThemeMode {
//   String get name {
//     switch (this) {
//       case ThemeMode.system:
//         return 'System';
//         break;
//       case ThemeMode.light:
//         return 'Ligth';
//         break;
//       case ThemeMode.dark:
//         return 'Dark';
//         break;
//     }
//     return null;
//   }
// }

// class SettingsBottomSheet extends StatefulWidget {
//   @override
//   _SettingsBottomSheetState createState() => _SettingsBottomSheetState();
// }

// class _SettingsBottomSheetState extends State<SettingsBottomSheet> {
//   ThemeMode _themeMode;
//   Color _colorApp;
//   List<Map<String,dynamic>> _colorList;
//   @override
//   void initState() {
//     super.initState();
//     _themeMode = Provider.of<Configurations>(context, listen: false).themeMode;
//     _colorApp=Provider.of<Configurations>(context,listen: false).colorApp;
//     _colorList=Provider.of<Configurations>(context,listen: false).colorlist;
//   }

//   void setTheme(ThemeMode theme) {
//     setState(() {
//       _themeMode = theme;
//     });
//     Provider.of<Configurations>(context, listen: false).themeMode = theme;
//   }
//   void setColor(Color color) {
//     setState(() {
//       _colorApp = color;
//     });
//     Provider.of<Configurations>(context, listen: false).colorApp = color;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             ExpansionTile(
//               title: Text('Theme'),
//               children: [
//                 for (var themeMode in ThemeMode.values)
//                   RadioListTile(
//                     title: Text(themeMode.name),
//                     value: themeMode,
//                     groupValue: _themeMode,
//                     onChanged: setTheme,
//                   ),
//               ],
//             ),
//             ExpansionTile(
//               title: Text('Colors'),
//               children: [
//                 for (var color in _colorList)
//                   RadioListTile<Color>(
//                     title: Text(color['name']),
//                     value: color['color'],
//                     groupValue: _colorApp,
//                     onChanged: setColor,
//                   ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

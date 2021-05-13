import 'package:flutter/material.dart';

class Folder {
  String id;
  IconData icon;
  String title;

  Folder({
    @required this.id,
    this.icon,
    @required this.title,
  });
}

class Folders with ChangeNotifier {
  final List<Folder> _items = [
    Folder(id: '1', title: 'Inbox', icon: Icons.inbox),
    Folder(id: '2', title: 'Today', icon: Icons.calendar_today),
    Folder(id: '3', title: 'Week', icon: Icons.weekend),
    Folder(id: '4', title: 'Proyectos personales', icon: Icons.folder_open),
    Folder(id: '5', title: 'Pruebas', icon: Icons.folder_open),
    Folder(id: '6', title: 'Pruebas1', icon: Icons.folder_open),
    Folder(id: '7', title: 'Pruebas2', icon: Icons.folder_open),
    Folder(id: '8', title: 'Pruebas3', icon: Icons.folder_open),
    Folder(id: '9', title: 'Pruebas4', icon: Icons.folder_open),
    // Folder(id: '10', title: 'Pruebas5', icon: Icons.folder_open),
    // Folder(id: '11', title: 'Pruebas6', icon: Icons.folder_open),
    // Folder(id: '12', title: 'Pruebas7', icon: Icons.folder_open),
    // Folder(id: '13', title: 'Pruebas8', icon: Icons.folder_open),
    // Folder(id: '14', title: 'Pruebas9', icon: Icons.folder_open),

  ];

  List<Folder> get items => [..._items];

  int get listCount => _items.length;

  
  int _currentFolderIndex = 0;
  int get currentFolderIndex => _currentFolderIndex;
  set currentFolderIndex(int index) {
    _currentFolderIndex = index;
    notifyListeners();
  }
}

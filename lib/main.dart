import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import './models/todo_colors.dart';
import './screens/side_menu.screen.dart';
import './providers/configuration.dart';
import './providers/folder.dart';
import './providers/todo_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData _buildThemeLigth(BuildContext ctx, Configurations config) {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      primaryColor: TodoColors.primaryColorLigth,
      backgroundColor: TodoColors.backgroundColorLigth,
      brightness: Brightness.light,
      textTheme: _buildLigthTextTheme(base),
      iconTheme: IconThemeData(color: TodoColors.iconColorGreyLigth),
    );
  }

  ThemeData _buildThemeDark(BuildContext ctx, Configurations config) {
    final ThemeData dark = ThemeData.dark();
    return dark.copyWith(
      backgroundColor: TodoColors.backgroundColorDark,
      primaryColor: TodoColors.primaryColorDark,
      brightness: Brightness.dark,
      textTheme: TextTheme(
        headline5: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          fontSize: 24,
          letterSpacing: 0.18,
          color: Color(0xFFFFFFFF),
        ),
        headline6: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          letterSpacing: 0.18,
          color: Color(0xFFFFFFFF),
        ),
        subtitle1: GoogleFonts.poppins(
          fontWeight: FontWeight.normal,
          fontSize: 18,
          letterSpacing: 0.2,
          color: Color(0xFFFFFFFF),
        ),
        subtitle2: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          letterSpacing: -0.04,
          color: Color(0xFFFFFFFF),
        ),
        bodyText1: GoogleFonts.poppins(
          fontWeight: FontWeight.normal,
          fontSize: 18,
          letterSpacing: 0.2,
          color: Color(0xFFFFFFFF),
        ),
        bodyText2: GoogleFonts.poppins(
          fontWeight: FontWeight.normal,
          fontSize: 14,
          letterSpacing: -0.5,
          color: Color(0xFFFFFFFF),
        ),
        caption: GoogleFonts.poppins(
          fontWeight: FontWeight.normal,
          fontSize: 12,
          letterSpacing: 0.2,
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }

  TextTheme _buildLigthTextTheme(ThemeData base) {
    return base.textTheme.copyWith(
      headline6: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 24,
        letterSpacing: 0.5,
        color: TodoColors.textColorBlackLigth,
      ),
      subtitle1: GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        letterSpacing: 0.2,
        color: TodoColors.textColorBlackLigth,
      ),
      subtitle2: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        letterSpacing: -0.04,
        color: TodoColors.textColorGreyLigth,
      ),
      bodyText1: GoogleFonts.poppins(
        fontWeight: FontWeight.normal,
        fontSize: 18,
        letterSpacing: 0.2,
        color: TodoColors.textColorBlackLigth,
      ),
      caption: GoogleFonts.poppins(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        letterSpacing: 0.2,
        color: TodoColors.textColorGreyLigth,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Configurations(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => TodoList(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Folders(),
        ),
      ],
      child: Consumer<Configurations>(builder: (context, config, child) {
        return MaterialApp(
          title: 'My Todoist',
          themeMode: config.themeMode,
          darkTheme: _buildThemeDark(context, config),
          // theme: _buildThemeDark(context, config),
          theme: _buildThemeLigth(context, config),
          home: SideMenuScreen(),
          routes: {},
        );
      }),
    );
  }
}

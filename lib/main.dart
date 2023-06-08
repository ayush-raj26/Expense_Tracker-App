import 'package:flutter/material.dart';
import 'package:expense_app/widgets/expenses.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 16, 1, 84));

var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 4, 53, 109));

void main() {
  // Locking the orientation
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn) {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.primaryContainer.withOpacity(0.6),
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        // scaffoldBackgroundColor: const Color.fromARGB(255, 193, 247, 193),
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
          elevation: 100,
          shadowColor: const Color.fromARGB(199, 0, 0, 0),
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: GoogleFonts.dosis(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: kColorScheme
                    .onSecondaryContainer, // will not be used as we have themed app bar foreground
                fontSize: 22,
              ),
            ),
      ),
      themeMode: ThemeMode.system, //default
      home: const Expenses(),
    ),
  );
  // });
}

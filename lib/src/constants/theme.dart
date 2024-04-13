import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Colors.black,
        onPrimary: Colors.white,
        secondary: Colors.grey.shade600,
        onSecondary: Colors.white,
        tertiary: Colors.orange.shade700,
        onTertiary: Colors.white,
        error: Colors.red.shade400,
        onError: Colors.white,
        background: Colors.grey.shade200,
        onBackground: Colors.black,
        surface: Colors.white,
        onSurface: Colors.black),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.roboto(fontSize: 14),
      bodyMedium: GoogleFonts.roboto(fontSize: 16),
      bodyLarge: GoogleFonts.roboto(fontSize: 18),
      headlineSmall:
          GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),
      headlineMedium:
          GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
      headlineLarge:
          GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
      displaySmall: GoogleFonts.roboto(fontSize: 24),
      displayMedium: GoogleFonts.roboto(fontSize: 28),
      displayLarge: GoogleFonts.roboto(fontSize: 32),
    ),
    inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none)),
    listTileTheme: ListTileThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))));

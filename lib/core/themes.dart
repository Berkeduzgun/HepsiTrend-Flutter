// burada temalandirma + renkler + ... yazicaz.

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

// import 'constants.dart';

const colors = {
  "primary": Color.fromARGB(255, 65, 159, 217),
  "onPrimary": Color.fromARGB(255, 255, 255, 255),
  "secondary": Color.fromARGB(255, 241, 241, 241),
  "onSecondary": Color.fromARGB(255, 82, 76, 100),
  "surface": Color.fromARGB(255, 255, 255, 255),
  "onSurface": Color.fromARGB(255, 82, 76, 100),
  "success": Colors.green, //basari rengi
  "error": Colors.red, // hata rengi
  "onError": Colors.white,
};

const darkColors = {
  "primary": Color.fromARGB(255, 43, 82, 120),
  "onPrimary": Color.fromARGB(255, 241, 241, 241),
  "secondary": Color.fromARGB(255, 32, 43, 54),
  "onSecondary": Color.fromARGB(255, 241, 241, 241),
  "surface": Color.fromARGB(255, 23, 33, 43),
  "onSurface": Color.fromARGB(255, 245, 245, 245),
  "success": Colors.green,  //basari rengi
  "error": Colors.red,  //hata rengi
  "onError": Colors.white,
};

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme(
    brightness: Brightness.light, 
    primary: colors["primary"]!, 
    onPrimary: colors["onPrimary"]!, 
    secondary: colors["secondary"]!, 
    onSecondary: colors["onSecondary"]!, 
    error: colors["error"]!, 
    onError: colors["onError"]!, 
    surface: colors["surface"]!, 
    onSurface: colors["onSurface"]!,
    ),
  textTheme : TextTheme(
    bodySmall : GoogleFonts.roboto(
      //fontSize: 32,
    ),
    bodyMedium : GoogleFonts.aBeeZee(),
    bodyLarge : GoogleFonts.roboto(),
    labelSmall : GoogleFonts.roboto(),
    labelMedium : GoogleFonts.roboto(),
    labelLarge : GoogleFonts.roboto(),
    titleSmall : GoogleFonts.roboto(),
    titleMedium : GoogleFonts.roboto(),
    titleLarge : GoogleFonts.roboto(),
    headlineSmall : GoogleFonts.roboto(),
    headlineMedium : GoogleFonts.roboto(),
    headlineLarge : GoogleFonts.roboto(),
    displaySmall : GoogleFonts.roboto(),
    displayMedium : GoogleFonts.roboto(),
    displayLarge : GoogleFonts.roboto(),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark, 
    primary: darkColors["primary"]!, 
    onPrimary: darkColors["onPrimary"]!, 
    secondary: darkColors["secondary"]!, 
    onSecondary: darkColors["onSecondary"]!, 
    error: darkColors["error"]!, 
    onError: darkColors["onError"]!, 
    surface: darkColors["surface"]!, 
    onSurface: darkColors["onSurface"]!,
    ),
  textTheme: TextTheme(
    bodySmall : GoogleFonts.roboto(
      //fontSize: 30,
    ),
    bodyMedium : GoogleFonts.aBeeZee(),
    bodyLarge : GoogleFonts.roboto(),
    labelSmall : GoogleFonts.roboto(),
    labelMedium : GoogleFonts.roboto(),
    labelLarge : GoogleFonts.roboto(),
    titleSmall : GoogleFonts.roboto(),
    titleMedium : GoogleFonts.roboto(),
    titleLarge : GoogleFonts.roboto(),
    headlineSmall : GoogleFonts.roboto(),
    headlineMedium : GoogleFonts.roboto(),
    headlineLarge : GoogleFonts.roboto(),
    displaySmall : GoogleFonts.roboto(),
    displayMedium : GoogleFonts.roboto(),
    displayLarge : GoogleFonts.roboto(),
  ),
);


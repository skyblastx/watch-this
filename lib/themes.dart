import 'package:flutter/material.dart';
import 'constants.dart' as constants;
// This is where we define our themeData.
Map lightThemeColor = constants.lightTheme;

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    // Theme data here
    primaryColor: lightThemeColor['PrimaryColor'],
    
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    // Theme data here
  );
}
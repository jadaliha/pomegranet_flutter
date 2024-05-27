// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';

// class AppTheme extends Equatable {
//   static final ThemeData lightTheme = ThemeData(
//     visualDensity: VisualDensity.adaptivePlatformDensity,
//     scaffoldBackgroundColor: const Color(0xFFFFFFFF),
//     brightness: Brightness.light,
//     textTheme: lightTextTheme,
//   );
//   static final ThemeData darkTheme = ThemeData(
//     visualDensity: VisualDensity.adaptivePlatformDensity,
//     scaffoldBackgroundColor: const Color(0xFF2F2F2F),
//     brightness: Brightness.dark,
//     textTheme: darkTextTheme,
//   );
//   static final TextTheme lightTextTheme = TextTheme(
//     bodyLarge: TextStyle(
//       fontSize: calHeightScale(12),
//       fontFamily: 'Dana',
//       // fontWeight: FontWeight.normal
//     ),
//     bodyMedium: const TextStyle(
//       fontFamily: 'Dana',
//       color: Colors.black,
//     ),
//     displayLarge: TextStyle(
//       color: Colors.black,
//       fontSize: calHeightScale(14),
//       fontFamily: 'Dana',
//       // fontWeight: FontWeight.normal
//     ),
//   );

//   static final TextTheme darkTextTheme = TextTheme(
//     bodyLarge: TextStyle(
//       fontSize: calHeightScale(12),
//       fontFamily: 'Dana',
//       // fontWeight: FontWeight.normal
//     ),
//     bodyMedium: const TextStyle(
//       fontFamily: 'Dana', color: Colors.white,
//       //  fontWeight: FontWeight.normal
//     ),
//     displayLarge: TextStyle(
//       color: Colors.white,
//       fontSize: calHeightScale(24),
//       fontFamily: 'Dana',
//       // fontWeight: FontWeight.normal
//     ),
//   );

//   @override
//   List<Object?> get props => [lightTheme, darkTheme];
// }

// extension CustomeTextStyle on ThemeData {
//   TextStyle get displayXLarge => TextStyle(
//         fontSize: calHeightScale(21.5),
//         fontFamily: 'Dana',
//         fontWeight: FontWeight.w600,
//         color: textDefault,
//       );
//   TextStyle get displayLarge => TextStyle(
//         fontSize: calHeightScale(16.5),
//         fontFamily: 'Dana',
//         fontWeight: FontWeight.w600,
//         color: textDefault,
//       );
//   TextStyle get displayMedium => TextStyle(
//         fontSize: calHeightScale(12.5),
//         fontFamily: 'Dana',
//         fontWeight: FontWeight.w600,
//         color: textDefault,
//       );
//   TextStyle get displaySmall => TextStyle(
//         fontSize: calHeightScale(9.5),
//         fontFamily: 'Dana',
//         fontWeight: FontWeight.w600,
//         color: textDefault,
//       );
//   TextStyle get displayXSmall => TextStyle(
//         fontSize: calHeightScale(9.5),
//         fontFamily: 'Dana',
//         fontWeight: FontWeight.w400,
//         color: textDefault,
//       );
//   TextStyle get pageHeading => TextStyle(
//         fontSize: calHeightScale(10.5),
//         fontFamily: 'Dana',
//         fontWeight: FontWeight.w400,
//         color: textDefault,
//       );
//   TextStyle get heading1 => TextStyle(
//         fontSize: calHeightScale(8.5),
//         fontFamily: 'Dana',
//         fontWeight: FontWeight.w600,
//         color: textDefault,
//       );
//   TextStyle get heading2 => TextStyle(
//         fontSize: calHeightScale(8.5),
//         fontFamily: 'Dana',
//         fontWeight: FontWeight.w700,
//         color: textDefault,
//       );
//   TextStyle get subHeading => TextStyle(
//         fontSize: calHeightScale(7.5),
//         fontFamily: 'Dana',
//         fontWeight: FontWeight.w600,
//         color: textDefault,
//       );
//   TextStyle get button1 => TextStyle(
//         fontSize: calHeightScale(12.5),
//         fontFamily: 'Dana',
//         fontWeight: FontWeight.w600,
//         color: textDefault,
//       );
//   TextStyle get button2 => TextStyle(
//         fontSize: calHeightScale(8.5),
//         fontFamily: 'Dana',
//         fontWeight: FontWeight.w600,
//         color: textDefault,
//       );
//   TextStyle get body => TextStyle(
//         fontSize: calHeightScale(8.5),
//         fontFamily: 'Dana',
//         fontWeight: FontWeight.w400,
//         color: textDefault,
//       );

//   TextStyle get caption1 => TextStyle(
//         fontSize: calHeightScale(6.5),
//         fontFamily: 'Dana',
//         fontWeight: FontWeight.w400,
//         color: textDefault,
//       );
//   TextStyle get caption2 => TextStyle(
//         fontSize: calHeightScale(6.5),
//         fontFamily: 'Dana',
//         fontWeight: FontWeight.w600,
//         color: textDefault,
//       );
//   TextStyle get caption3 => TextStyle(
//         fontSize: calHeightScale(5),
//         fontFamily: 'Dana',
//         fontWeight: FontWeight.w400,
//         color: textDefault,
//       );
//   TextStyle get body2 => TextStyle(
//         fontSize: calHeightScale(7),
//         fontFamily: 'Dana',
//         fontWeight: FontWeight.w400,
//         color: textDefault,
//       );
// }

// extension Background on ThemeData {
//   Color get backgroudDefault => brightness == Brightness.light
//       ? const Color(0xFFFFFFFF)
//       : const Color(0xFF2F2F2F);

//   Color get backgroudSubdued => brightness == Brightness.light
//       ? const Color(0xFFF2F4F5)
//       : const Color(0xFF242424);

//   Color get backgroudSelected => brightness == Brightness.light
//       ? const Color(0xFFF2F4F5)
//       : const Color(0xFF242424);
//   Color get backgorundSelectedDark => const Color(0xFF242424);
//   Color get backgroudPassword => const Color(0xFF546476);
//   Color get backgroudPrimary => const Color(0xFF000000);
// }

// extension Action on ThemeData {
//   //Color get primaryBrandColor => const Color(0xFFF75A38);
//   Color get primaryBrandColor => const Color(0xff00AB97);
//   Color get actionGreenishBlue => const Color(0xFF00AB97);
//   Color get actionPressed => const Color(0xFF018F7F);
//   Color get actionSecondary => brightness == Brightness.light
//       ? const Color(0xFF898F93)
//       : const Color(0xFF636568);
//   Color get secondaryPressed => brightness == Brightness.light
//       ? const Color(0xFF7B8084)
//       : const Color(0xFF2A2A2A);
//   Color get actionButton => brightness == Brightness.light
//       ? const Color(0xFF3D454C)
//       : const Color(0xFF151515);
//   Color get actionPrimary => brightness == Brightness.light
//       ? const Color(0xFFF2F4F5)
//       : const Color(0xFF242424);
//   Color get actionSecondary2 => brightness == Brightness.light
//       ? const Color(0xFF3D454C)
//       : const Color(0xFF898F93);
//   Color get actionClosedPressed => brightness == Brightness.light
//       ? const Color(0xFF99DDD5)
//       : const Color(0xFF00352F);
//   Color get actionButtonPressed => brightness == Brightness.light
//       ? const Color(0xFFBFEAE5)
//       : const Color(0xFF005248);
//   Color get actionRedButtonPressed => brightness == Brightness.light
//       ? const Color(0xFFFFCCD5)
//       : const Color(0xFF59000F);
//   Color get actionTransparent => Colors.transparent;
//   Color get disableButton => brightness == Brightness.light
//       ? const Color(0xFF9DA2A6)
//       : const Color(0xFF636568);
// }

// extension TextCustomeTheme on ThemeData {
//   Color get textDefaultWhite => const Color(0xFFFFFFFF);
//   Color get textDefaultDark => const Color(0xFF3D454C);
//   Color get textDefault => brightness == Brightness.light
//       ? const Color(0xFF3D454C)
//       : const Color(0xFFFFFFFF);
//   Color get textDefaultContrast =>
//       brightness == Brightness.light ? Colors.black : Colors.white;
//   Color get textGreenishBlue => const Color(0xFF00AB97);
//   //Color get primaryBrandColor => const Color(0xFFF75A38);
//   Color get textCritical => const Color(0xFFE52817);
//   Color get darkGrey => const Color(0xFF323232);
//   Color get textSecondary => const Color(0xFF9C9C9C);
//   Color get textSecondary2 => brightness == Brightness.light
//       ? const Color(0xFF828181)
//       : const Color(0xFFA1A1A2);
//   Color get textPrimary => brightness == Brightness.light
//       ? const Color(0xFF3D454C)
//       : const Color(0xFFC2C7CC);
//   Color get textSubdued => brightness == Brightness.light
//       ? const Color(0xFFA5AAAE)
//       : const Color(0xFF636568);
//   Color get textSubdued2 => brightness == Brightness.light
//       ? const Color(0xFFA1A1A1)
//       : const Color(0xFF8E9195);
//   Color get textOn => brightness == Brightness.light
//       ? const Color(0xFFB5B9BC)
//       : const Color(0xFF717172);

//   Color get textOnSbdued => brightness == Brightness.light
//       ? const Color(0xFFD2D6DA)
//       : const Color(0xFF636568);
//   Color get textPrimary2 => brightness == Brightness.light
//       ? const Color(0xFFD2D6DA)
//       : const Color(0xFF636568);
//   Color get textOnPrimary => brightness == Brightness.light
//       ? const Color(0xFFB5B5B5)
//       : const Color(0xFFB5B9BC);
//   Color get textOnLabelGreen => brightness == Brightness.light
//       ? const Color(0xFF007D2A)
//       : const Color(0xFF16D956);
//   Color get textOnCompleted => brightness == Brightness.light
//       ? const Color(0xFF6D6D6D)
//       : const Color(0xFF989898);
//   Color get textOnInprogress => brightness == Brightness.light
//       ? const Color(0xFF945C25)
//       : const Color(0xFFFF9F40);
//   Color get textCancel => brightness == Brightness.light
//       ? const Color(0xFFFF5A76)
//       : const Color(0xFFBF0020);
//   Color get textOrange => brightness == Brightness.light
//       ? const Color(0xFFFD7F23)
//       : const Color(0xFFFD7F23);
//   Color get lightAssistiveSuccessDark => const Color(0xFF007F5F);
//   Color get lightThemeBlueDealBlock => const Color(0xFF99DDD5);
//   Color get lightAssistiveWarningMain => const Color(0xFFB98900);
//   Color get lightAssistiveWarningPale => const Color(0xFFFFF3E2);
//   Color get lightAssistiveSuccessMain => const Color(0xFF007F5F);
//   Color get lightAssistiveSuccessPale => const Color(0xffE7F9F2);

//   Color get textDanger => brightness == Brightness.light
//       ? const Color(0xFFBF0020)
//       : const Color(0xFFFFFFFF);
// }

// extension Surface on ThemeData {
//   Color get surfaceDefualt => brightness == Brightness.light
//       ? const Color(0xFF3D454C)
//       : const Color(0xFF636568);
//   Color get surfacePrimary => brightness == Brightness.light
//       ? const Color(0xFFF2F4F5)
//       : const Color(0xFF525355);
//   Color get surfacePressed => brightness == Brightness.light
//       ? const Color(0xFF31373D)
//       : const Color(0xFF636568);
//   Color get surfaceDefualtPressed => brightness == Brightness.light
//       ? const Color(0xFFDBDCDD)
//       : const Color(0xFF525355);
//   Color get surfaceSecondary => brightness == Brightness.light
//       ? const Color(0xFF9DA2A6)
//       : const Color(0xFFFFFFFF);
//   Color get surfaceLabelGreen => brightness == Brightness.light
//       ? const Color(0xFFE5FFEE)
//       : const Color(0xFF003311);
//   Color get surfaceLabelInProgress => brightness == Brightness.light
//       ? const Color(0xFFFFF2E6)
//       : const Color(0xFF331A00);
//   Color get surfaceLabelCompleted => brightness == Brightness.light
//       ? const Color(0xFFF2F2F2)
//       : const Color(0xFF1C1C1C);
//   //Color get surfaceOrange => const Color(0xFFFD7F23);
//   Color get progressbar => const Color(0xFF77BA1B);
//   Color get lightAssistiveSuccessLighter => const Color(0xFFCEF2E3);
//   Color get surfacePoisonIvy => brightness == Brightness.light
//       ? const Color(0xFFEBFFFD)
//       : const Color(0xFF00AB97);
// }

// extension BorderExtensions on ThemeData {
//   Color get borderDefault => brightness == Brightness.light
//       ? const Color(0xFFC2C7CC)
//       : const Color(0xFF000000);
//   Color get borderDefault2 => brightness == Brightness.light
//       ? const Color(0xFFC2C7CC)
//       : const Color(0xFF000000);
//   Color get borderSecondary => const Color(0xFF000000);
//   Color get radioButton => brightness == Brightness.light
//       ? const Color(0xFF939CA3)
//       : const Color(0xFF7C7F82);
//   Color get borderDefaultSubset => brightness == Brightness.light
//       ? const Color(0xFFE5E5E5)
//       : const Color(0xFF212121);
//   Color get borderDivider => brightness == Brightness.light
//       ? const Color(0xFF898F93)
//       : const Color(0xFF898F93);

//   Color get borderSignIn => brightness == Brightness.light
//       ? const Color(0xFFEAEBEC)
//       : const Color(0xFFEAEBEC);

//   Color get borderCritical => const Color(0xFFC00000);
//   Color get borderPrimary => brightness == Brightness.light
//       ? const Color(0xFFEAEBEC)
//       : const Color(0xFF7C7F82);
// }

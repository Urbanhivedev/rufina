import 'package:flutter/material.dart';

import 'core/core.dart';
import 'presentation/routers/router.dart';
import 'presentation/themes/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme(themeBrightness: true).getThemeData!.copyWith(
            textTheme: TextTheme(
              displayLarge: AppStyle.headline1,
              displayMedium: AppStyle.headline2,
              displaySmall: AppStyle.headline3,
              headlineMedium: AppStyle.headline4,
              headlineSmall: AppStyle.headline5,
              titleLarge: AppStyle.headline6,
              titleMedium: AppStyle.subtitle1,
              titleSmall: AppStyle.subtitle2,
              bodyLarge: AppStyle.bodyText1,
              bodyMedium: AppStyle.bodyText2,
              labelLarge: AppStyle.button,
              bodySmall: AppStyle.caption,
              labelSmall: AppStyle.overline,
            ),
            appBarTheme: AppBarTheme(
              color: AppColor.lightColorScheme.primary,
              shadowColor: AppColor.seed,
              elevation: 10.0,
            ),
            iconTheme: const IconThemeData(color: Colors.grey),
          ),
      initialRoute: AppRouters.homeScreen,
      onGenerateRoute: AppRouter.route,
    );
  }
}

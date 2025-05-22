import 'package:flutter/material.dart';

import 'package:inventi_exam/routes/app_routes.dart';
import 'package:inventi_exam/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: InventiExamAppTheme.lightTheme,
      darkTheme: InventiExamAppTheme.darkTheme,
      routerConfig: AppRoutes.router(),
    );
  }
}

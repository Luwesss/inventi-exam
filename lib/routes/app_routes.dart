import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:inventi_exam/features/authentication/screens/login/login.dart';
import 'package:inventi_exam/features/home/screens/home.dart';
import 'package:inventi_exam/routes/routes.dart';

class AppRoutes {
  static GoRouter router() {
    return GoRouter(
      initialLocation: InventiExamRoutes.signIn,
      routes: [
        // - Home
        GoRoute(
          path: InventiExamRoutes.home,
          builder: (context, state) => const HomeScreen(),
        ),

        // - Authentication Screens
        GoRoute(
          path: InventiExamRoutes.signIn,
          builder: (context, state) => const LoginScreen(),
        ),

        // - UTILITY SCREENS
      ],
      errorBuilder: (context, state) => const Scaffold(
        body: Center(child: Text('Error: Page not found')),
      ),
    );
  }
}

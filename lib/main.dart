import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:inventi_exam/app.dart';
import 'package:inventi_exam/data/repositories/home_repository.dart';
import 'package:inventi_exam/data/services/home_service.dart';
import 'package:inventi_exam/features/home/controllers/home_cubit.dart';

Future<void> main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  try {
    await dotenv.load(fileName: ".env");
  } catch (e) {
    print("Failed to initialize ENV variables: : $e");
  }

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (_) => HomeCubit(
            repository: HomeRepository(service: HomeService()),
          ),
        ),
      ],
      child: const App(),
    ),
  );

  FlutterNativeSplash.remove();
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saat_bara_utara/app/features/splash/presentation/page/splash_screen.dart';
import 'package:saat_bara_utara/config/theme/theme.dart';
import 'package:saat_bara_utara/di/injection_container.dart' as di;
import 'config/app_config.dart';
import 'config/theme/theme_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _setupApplication();

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  di.init();
  runApp(const MyApp());
}

Future<void> _setupApplication() async {
  const environment = String.fromEnvironment('ENV', defaultValue: 'dev');
  await Env.load(environment);
}

ThemeProvider _themeProvider = ThemeProvider();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '7/12',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightThemeMode,
      darkTheme: AppTheme.darkThemeMode,
      themeMode: _themeProvider.darkTheme ? ThemeMode.dark : ThemeMode.light,
      home: const SplashScreen(),
    );
  }
}



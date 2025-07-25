import 'package:MyTask/task_1/authentication/register/register_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'di/task_get_it.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(
    DevicePreview(
      enabled: true,
      builder: (BuildContext context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en'),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        final page = buildPage(settings.name ?? '/');

        // Define responsive scaling logic per route if needed
        final responsiveContent = Builder(
          builder: (context) {
            return ResponsiveScaledBox(
              width: ResponsiveValue<double>(
                context,
                conditionalValues: [
                  // const Condition.between(start: 0, end: 360, value: 320, landscapeValue: 500),
                  // const Condition.between(start: 360, end: 450, value: 375, landscapeValue: 500),
                  // const Condition.between(start: 450, end: 800, value: 500, landscapeValue: 750),
                  // const Condition.between(start: 800, end: 1100, value: 530, landscapeValue: 850),
                  // const Condition.between(start: 1100, end: 1400, value: 640,landscapeValue: 880),
                  // const Condition.between(start: 1400, end: 9999, value: 700, landscapeValue: 1100),
                  const Condition.equals(name: MOBILE, value: 450),
                  const Condition.between(start: 800, end: 1100, value: 800),
                  Condition.between(start: 1000, end: double.maxFinite.toInt(), value: 1000),
                ],
              ).value,
              child: BouncingScrollWrapper.builder(
                context,
                page,
                dragWithMouse: true,
              ),
            );
          }
        );

        return MaterialPageRoute(builder: (_) => responsiveContent);
      },
    );
  }

  /// A simple route builder
  Widget buildPage(String routeName) {
    switch (routeName) {
      case '/':
        return const RegisterPage();
    // Add other routes here as needed
    // case '/login': return const LoginPage();
      default:
        return const Scaffold(
          body: Center(child: Text('Page not found')),
        );
    }
  }
}
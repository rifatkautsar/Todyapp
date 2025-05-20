import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoapp/config/flavor/flavor_config.dart';
import 'package:todoapp/config/router/router_app.dart';

Future<void> mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('id'),
        Locale('en'),
        Locale('ar'),
        Locale('es'),
      ],
      path: 'assets/lang',
      fallbackLocale: const Locale('en'),
      startLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        if (FlavorConfig.isProd) return child!;
        return Banner(
          message: FlavorConfig.isDev ? 'DEV' : 'STAGING',
          location: BannerLocation.topEnd,
          color: FlavorConfig.isDev ? Colors.red : Colors.orange,
          child: child!,
        );
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}

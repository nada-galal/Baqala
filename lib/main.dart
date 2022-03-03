import 'package:beqala/src/common/commons.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';

//import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

//import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:beqala/src/application.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  EasyLocalization.logger.enableLevels = [
    LevelMessages.error,
    LevelMessages.warning,
  ];
  hideStatusBar();
  final dioService = DioService.getInstance();
  dioService
    ..initInterceptors()
    ..debugMode = true
    ..options = BaseOptions(baseUrl: baseApi)
    ..addHeader({
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': token,
    });

  Provider.debugCheckInvalidValueType = null;

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'assets/lang',
      fallbackLocale: const Locale('ar'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: ContextService.navigatorKey,
        builder: BotToastInit(),
        navigatorObservers: [BotToastNavigatorObserver()],
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: const Locale('ar'),
        theme: ThemeData(
          primaryColor: mainGreen,
          backgroundColor: Colors.white,
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            },
          ),
        ),
        home: ChangeNotifierProvider(
          create: (_) => SplashProvider(),
          child: SplashScreen(),
        ),
      ),
    );
  }
}

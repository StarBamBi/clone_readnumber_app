import 'package:clone_readnumber_app/screen/calendar/calendar_main.dart';
import 'package:clone_readnumber_app/screen/main/screen_main.dart';
import 'package:clone_readnumber_app/screen/payroll/payroll_main.dart';
import 'package:clone_readnumber_app/screen/report/report_main.dart';
import 'package:clone_readnumber_app/screen/settings/settings_main.dart';
import 'package:clone_readnumber_app/screen/transactiion_history/transaction_history_main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'consts/const_properties.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '상호명'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;
  static final _mainColor = Color(0xff557ae5);

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      label: '리포트',
      icon: SvgPicture.asset(
        'assets/images/ic_report_nor.svg',
        width: 24.0,
        height: 24.0,
      ),
      activeIcon: SvgPicture.asset(
        'assets/images/ic_report_active.svg',
        width: 24.0,
        height: 24.0,
      ),
    ),
    BottomNavigationBarItem(
      label: '거래내역',
      icon: SvgPicture.asset(
        'assets/images/ic_transaction_history_nor.svg',
        width: 24.0,
        height: 24.0,
      ),
      activeIcon: SvgPicture.asset(
        'assets/images/ic_transaction_history_active.svg',
        width: 24.0,
        height: 24.0,
      ),
    ),
    BottomNavigationBarItem(
      label: '캘린더',
      icon: SvgPicture.asset(
        'assets/images/ic_sales_nor.svg',
        width: 24.0,
        height: 24.0,
      ),
      activeIcon: SvgPicture.asset(
        'assets/images/ic_sales_active.svg',
        width: 24.0,
        height: 24.0,
      ),
    ),
    BottomNavigationBarItem(
      label: '인건비',
      icon: SvgPicture.asset(
        'assets/images/ic_payroll_nor.svg',
        width: 24.0,
        height: 24.0,
      ),
      activeIcon: SvgPicture.asset(
        'assets/images/ic_payroll_active.svg',
        width: 24.0,
        height: 24.0,
      ),
    ),
    BottomNavigationBarItem(
      label: '더 보기',
      icon: SvgPicture.asset(
        'assets/images/ic_settings_nor.svg',
        width: 24.0,
        height: 24.0,
      ),
      activeIcon: SvgPicture.asset(
        'assets/images/ic_settings_active.svg',
        width: 24.0,
        height: 24.0,
      ),
    ),
  ];

  List pages = [
    const ReportMain(),
    const TransactionHistoryMain(),
    const CalendarMain(),
    const PayrollMain(),
    const SettingsMain(),
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        // 스크린 사이즈 대응
        designSize: Size(360, 690),
        builder: (ctx, child) {
          return MaterialApp(
            builder: (context, child) => MediaQuery(data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1.0,
              boldText: false,
            ),
              child: child!,
            ),
            title: '리드넘버',
            debugShowCheckedModeBanner: false,  // 디버그 배너 표시 유무
            localizationsDelegates: const[
              // ... 앱 별 Localization Delegate를 여기에 정의(앱국제화)
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            theme: ThemeData(
              fontFamily: 'Noto',
              hintColor: const Color(0xff808080),
              textTheme: TextTheme(
                headline1: TextStyle(
                  color: primaryBlackColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                bodyText1: TextStyle(
                  color: primaryBlackColor,
                  fontSize: 14.0,
                ),
              ),
              appBarTheme: const AppBarTheme(
                color: Colors.white,
                titleTextStyle: TextStyle(color: Colors.black),
                elevation: 0.0,
                textTheme: TextTheme(
                  headline6: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
                iconTheme: IconThemeData(color: Colors.black),
                actionsIconTheme: IconThemeData(color: Colors.black),
                systemOverlayStyle: SystemUiOverlayStyle.light,
              ),
              scaffoldBackgroundColor: Colors.white,
              cupertinoOverrideTheme: CupertinoTheme.of(context).copyWith(
                brightness: Brightness.light,
              ),
              highlightColor: const Color(0xfff8f8f8),
              splashColor: const Color(0xfff8f8f8),
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => const ScreenMain(),
            },
          );
        }
    );
  }
}

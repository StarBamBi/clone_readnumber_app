import 'package:clone_readnumber_app/screen/calendar/calendar_main.dart';
import 'package:clone_readnumber_app/screen/payroll/payroll_main.dart';
import 'package:clone_readnumber_app/screen/report/report_main.dart';
import 'package:clone_readnumber_app/screen/settings/settings_main.dart';
import 'package:clone_readnumber_app/screen/transactiion_history/transaction_history_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading : false,  // 뒤로가기 버튼 제거
        backgroundColor: _mainColor,
        elevation: 0,
        title: Text(widget.title, style: const TextStyle(fontWeight: FontWeight.bold,),),
        actions: <Widget>[
          Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 0.0,
                  vertical: 10.0,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff557ae5),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: Offset(0.0, 2.0),
                        blurRadius: 5.0
                      ),
                    ],
                  ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/ic_chat.svg',
                      width: 24.0,
                      height: 24.0,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 5.0),
                    const Text(
                      '채팅상담',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 20.0),
        ],
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff2962ff),
        selectedFontSize: 12.0,
        unselectedItemColor: Color(0xff222222),
        unselectedFontSize: 12.0,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: bottomItems,
      ),
    );
  }
}

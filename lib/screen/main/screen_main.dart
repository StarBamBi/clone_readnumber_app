import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({Key? key}) : super(key: key);

  @override
  _ScreenMainState createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  static final _mainColor = Color(0xff557ae5);
  int _selectedIndex = 0;

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
      label: '거래 내역',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('하이'),
      ),
      body: const Text('하이'),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,  // Bar 배경색
        showUnselectedLabels: true,
        selectedItemColor: const Color(0xff2962ff),
        selectedFontSize: 12.0,
        unselectedItemColor: const Color(0xff222222),
        unselectedFontSize: 12.0,
        items: bottomItems,
        onTap: (int index) {
          setState(() {
            _selectedIndex=index;
          });
        },
      ),
    );
  }
}
import 'package:clone_readnumber_app/widget/normal_refresh_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../widget/custom_clamping_scroll_physics.dart';


final _refreshController = RefreshController(initialRefresh: false);

class ScreenMain extends StatefulWidget {
  const ScreenMain({Key? key}) : super(key: key);

  @override
  _ScreenMainState createState() => _ScreenMainState();
}

void _onRefresh() async {
  print('onRefresh');

  await Future.delayed(const Duration(milliseconds: 1000));

  _refreshController.refreshCompleted();
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
        brightness: Brightness.dark,
        title: const Text("리포트 메인 상호명", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
        backgroundColor: _mainColor,
        automaticallyImplyLeading: false,
        centerTitle: false,
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 0.0,
              vertical: 10.0,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 5.0,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: Offset(0.0, 2.0),
                  blurRadius: 5.0,
                ),
              ],
              color: const Color(0xff557ae5),
              borderRadius: BorderRadius.circular(10.0),
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
          const SizedBox(width: 20.0,)
        ],
      ),
      body: Ink(
        color: _mainColor,
        child: LayoutBuilder(
          builder: (context, constraints) => SmartRefresher(
            enablePullDown: true, // refresh 활성화
            header: NormalRefreshHeader(),  // refresh 메서드 활성화 시, 로딩 아이콘
            physics: const CustomClampingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),  // 데이터의 양의 유무 상관없이 스크롤 이벤트를 받을 수 있도록
              canUnderscroll: true, // 아래쪽으로 땡기기
              canOverscroll: false, // 위쪽으로 땡기기
            ),
            controller: _refreshController,
            onRefresh: _onRefresh,
            child: Container(
              color: Colors.white,
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Column(
                children: [
                  Container(
                    color: _mainColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
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
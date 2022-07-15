import 'package:flutter/material.dart';

class ReportMain extends StatefulWidget {
  const ReportMain({Key? key}) : super(key: key);

  @override
  _ReportMainState createState() => _ReportMainState();
}

class _ReportMainState extends State<ReportMain> {
  static final _mainColor = Color(0xff557ae5);
  
  @override
  Widget build(BuildContext contetx) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: _mainColor,
          child: Column(
            children: const[
              Text('하이')
            ],
          )
        ),
      ],
    );
  }
}
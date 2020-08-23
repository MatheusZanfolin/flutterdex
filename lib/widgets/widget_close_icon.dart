
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class CloseIcon extends StatelessWidget {

  final IconData icon;

  CloseIcon({@required this.icon});

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () { _onCloseIconTapped(context); },
    child: Container(
      margin: EdgeInsets.only(left: 8),
      child: Icon(icon)
    ),
  );

  void _onCloseIconTapped(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    } else {
      SystemNavigator.pop();
    }
  }

}

import 'package:flutter/cupertino.dart';

class Space extends StatelessWidget {

  final double size;

  Space({@required this.size});

  @override
  Widget build(BuildContext context) => SizedBox.fromSize(size: Size(this.size, this.size));

}
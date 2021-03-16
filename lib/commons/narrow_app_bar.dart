import 'package:flutter/material.dart';

class  NarrowAppBar extends StatelessWidget  with PreferredSizeWidget{

  final Widget leading,trailing;

  NarrowAppBar({
    Key key, this.leading, this.trailing

}):super(key:key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 16
      ),
      child: Row(
        children: [
          leading,
          Spacer(),
          trailing
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(40);
}

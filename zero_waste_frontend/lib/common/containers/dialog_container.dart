import 'package:flutter/material.dart';
import 'package:gm5_utils/extended_functionality/context.dart';

import '../globals.dart';

class DialogContainer extends StatelessWidget {
  final bool primary;
  final Widget child;

  const DialogContainer({Key key, this.primary = false, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: primary ? null : BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Pallette.strongShadows,
            blurRadius: 40,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          color: primary ? context.theme.primaryColor : Pallette.background,
          child: child,
        ),
      ),
    );
  }
}

class DialogTitle extends StatelessWidget {
  final bool primary;
  final Widget title;

  const DialogTitle({Key key, this.primary = true, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: context.textTheme.headline3.copyWith(
        color: primary ? context.theme.primaryColor : Colors.white,
      ),
      child: title,
    );
  }
}

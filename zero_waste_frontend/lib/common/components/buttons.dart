import 'package:flutter/material.dart';
import 'package:gm5_utils/extended_functionality/context.dart';

import '../dimens.dart';

class ZeroOutlineButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;
  final bool primary;
  final double height;

  const ZeroOutlineButton({Key key, this.onTap, this.child, this.primary = true, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = primary ? context.theme.primaryColor : Colors.white;
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimens.radius),
      child: InkWell(
        onTap: onTap,
        child: IconTheme(
          data: IconThemeData(color: color),
          child: DefaultTextStyle(
            style: context.textTheme.button.copyWith(color: color),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimens.radius),
                border: Border.all(color: color, width: 2),
              ),
              alignment: Alignment.center,
              constraints: height == null ? BoxConstraints(minHeight: Dimens.minClickable) : null,
              height: height,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

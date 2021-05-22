import 'package:flutter/material.dart';
import 'package:gm5_utils/extended_functionality/context.dart';
import 'dimens.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: Dimens.padding),
          child: Text(
            'ZERO',
            style: context.textTheme.headline2.copyWith(color: context.theme.primaryColor),
          ),
        ),
        Text(
          'WASTE',
          style: context.textTheme.headline1.copyWith(color: context.theme.primaryColor),
        ),
      ],
    );
  }
}

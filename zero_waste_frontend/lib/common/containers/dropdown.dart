import 'package:flutter/material.dart';
import 'package:gm5_utils/components/delayed_builder.dart';
import '../dimens.dart';
import '../globals.dart';

class DropdownContent extends StatelessWidget {
  final List<Widget> children;
  final double width;
  final double height;
  final EdgeInsets padding;
  final bool reverse;
  final bool shrinkWrap;
  final Widget noMatches;

  const DropdownContent(
      {Key key,
      this.children,
      this.width,
      this.height,
      this.padding,
      this.reverse = false,
      this.shrinkWrap = false,
      this.noMatches})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.radius),
        boxShadow: [
          BoxShadow(
            color: Pallette.strongShadows,
            blurRadius: 8,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Dimens.radius),
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimens.radius),
          child: Padding(
            padding: padding ?? EdgeInsets.zero,
            child: DelayedBuilder(
              fadeDuration: Duration(milliseconds: 200),
              stillLoading: children == null,
              builder: (context) => children.isEmpty
                  ? noMatches ??
                      Center(
                        child: Text(
                          'No matches',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 20,
                          ),
                        ),
                      )
                  : ListView.separated(
                      reverse: reverse,
                      shrinkWrap: shrinkWrap,
                      padding: EdgeInsets.zero,
                      itemBuilder: (c, i) => children[i],
                      separatorBuilder: (c, i) => Divider(
                        height: 1,
                      ),
                      itemCount: children.length,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

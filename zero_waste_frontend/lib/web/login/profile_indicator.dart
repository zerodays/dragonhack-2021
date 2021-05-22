import 'package:dropdown_overlayentry/dropdown_overlayentry.dart';
import 'package:flutter/material.dart';
import 'package:gm5_utils/components/delayed_builder.dart';
import 'package:gm5_utils/extended_functionality/context.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste_frontend/common/api/authentication.dart';
import 'package:zero_waste_frontend/common/components/buttons.dart';
import 'package:zero_waste_frontend/common/containers/dropdown.dart';
import 'package:zero_waste_frontend/common/dimens.dart';
import 'package:zero_waste_frontend/common/providers/authentication_provider.dart';

class ProfileIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AuthenticationProvider>();
    return DropdownOverlayEntry(
      barrierDismissible: true,
      triggerBuilder: (context, key, isOpen, toggle) => SizedBox(
        key: key,
        height: Dimens.minClickable,
        child: DelayedBuilder(
          stillLoading: provider.profile == null,
          builder: (context) => ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.radius),
            child: Material(
              color: context.theme.primaryColor,
              child: ZeroOutlineButton(
                onTap: toggle,
                child: Container(
                  height: double.infinity,
                  constraints: BoxConstraints(minWidth: 50),
                  padding: const EdgeInsets.symmetric(horizontal: Dimens.padding),
                  color: isOpen ? context.theme.hoverColor : null,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      provider.profile.name.isEmpty
                          ? Offstage()
                          : Padding(
                              padding: const EdgeInsets.only(left: Dimens.padding),
                              child: Text(
                                provider.profile.name,
                                style: context.textTheme.button.copyWith(color: Colors.white),
                              ),
                            )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      alignment: (rect) => Offset(-150 + rect.width, rect.height + 4),
      dropdownBuilder: (BuildContext context, Rect buttonRect) => DropdownContent(
        width: 150,
        shrinkWrap: true,
        children: [
          ListTile(
            onTap: () => authenticationController.logout(),
            title: Text(
              'logout',
              style: context.textTheme.button.copyWith(color: context.theme.primaryColor),
            ),
            leading: Icon(
              Icons.logout,
              color: context.theme.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
